import matplotlib.pyplot as plt
import numpy as np

class FixedPointPI:
    """定点数实现的PI控制器，适用于电流环控制"""
    
    def __init__(self, kp, ki, sat_limit=32767, anti_windup=True, scale_factor=1024):
        """初始化PI控制器"""
        self.kp = int(kp)                    # 比例增益
        self.ki = int(ki)                    # 积分增益
        self.sat_limit = int(sat_limit)      # 输出饱和限制值
        self.anti_windup = anti_windup       # 抗饱和标志
        self.scale_factor = int(scale_factor) # 定标因子
        
        self.integral_term = 0               # 积分项
        self.prev_error = 0                  # 上一次误差
        self.output = 0                      # 控制器输出
        
    def compute(self, reference, feedback):
    # 计算误差
        error = reference - feedback
        
        # 比例项计算
        proportional = (self.kp * error) // self.scale_factor
        
        # 积分项累加（不缩放以保持精度）
        self.integral_term += (self.ki * error)
        
        # 积分限幅（与输出限制保持一致关系）
        max_integral = self.sat_limit * self.scale_factor
        if self.integral_term > max_integral:
            self.integral_term = max_integral
        elif self.integral_term < -max_integral:
            self.integral_term = -max_integral
        
        # 计算输出（积分项缩放）
        scaled_integral = self.integral_term // self.scale_factor
        output = proportional + scaled_integral
        
        # 输出限幅
        if output > self.sat_limit:
            if self.anti_windup:
                # 修正：与缩放后的积分项一致
                self.integral_term -= (output - self.sat_limit) * self.scale_factor
            output = self.sat_limit
        elif output < -self.sat_limit:
            if self.anti_windup:
                self.integral_term -= (output + self.sat_limit) * self.scale_factor
            output = -self.sat_limit
        
        return output
 
    
    def reset(self):
        """重置控制器状态"""
        self.integral_term = 0
        self.prev_error = 0
        self.output = 0


class MotorModel:
    """电机RL模型"""
    def __init__(self, R=5.0, L=0.001, dt=0.0001):
        self.R = R          # 电阻，单位：欧姆
        self.L = L          # 电感，单位：亨利
        self.dt = dt        # 采样时间，单位：秒
        self.id = 0         # d轴电流
        self.iq = 0         # q轴电流
        
    def update(self, Vd, Vq):
        # 基于RL模型计算电流变化：di/dt = (V - R*i) / L
        # 使用欧拉法离散化
        self.id += ((Vd - self.R * self.id) * self.dt / self.L)
        self.iq += ((Vq - self.R * self.iq) * self.dt / self.L)
        
        # 返回当前电流值（转为整数以适应定点运算）
        return int(self.id), int(self.iq)


# 示例: 电流环PI控制器的使用
if __name__ == "__main__":
    # 参数设置
    SCALE_FACTOR = 1020
    kp = int(2.5* SCALE_FACTOR)  # 比例增益，增大以适应RL模型
    ki = int(0.5* SCALE_FACTOR)  # 积分增益，增大以适应RL模型
    
    # 创建PI控制器实例
    current_pi_d = FixedPointPI(kp, ki, sat_limit=5000)
    current_pi_q = FixedPointPI(kp, ki, sat_limit=5000)
    
    # 创建电机模型
    motor = MotorModel(R=5.0, L=0.001, dt=0.0001)
    
    # 模拟电流环控制
    target_id = 0       # d轴目标电流
    target_iq = 100    # q轴目标电流
    
    # 创建数据存储列表
    steps = []
    id_values = []
    iq_values = []
    vd_values = []
    vq_values = []
    id_error = []
    iq_error = []
    id_integral = []    # 存储d轴积分项
    iq_integral = []    # 存储q轴积分项
    
    # 电机控制频率（一般高于模型更新频率）
    control_interval = 10  # 每10个模拟步长执行一次控制
    
    # 模拟迭代次数
    iterations = 5000
    
    vbase = 16384/12
    ibase = 1000
    # 模拟FOC迭代过程
    for i in range(iterations):
        # 控制更新（较低频率）
        if i % control_interval == 0:
            # 获取当前电流
            actual_id, actual_iq = motor.id *ibase, motor.iq*ibase
            
            # 计算控制输出
            vd = current_pi_d.compute(target_id, actual_id)
            vq = current_pi_q.compute(target_iq, actual_iq)
            
            # 存储数据用于绘图
            steps.append(i)
            id_values.append(actual_id)
            iq_values.append(actual_iq)
            vd_values.append(vd)
            vq_values.append(vq)
            id_error.append(target_id - actual_id)
            iq_error.append(target_iq - actual_iq)
            id_integral.append(current_pi_d.integral_term)
            iq_integral.append(current_pi_q.integral_term)
            
            if i % 100 == 0:
                print(f"Step {i}: Id={actual_id:.2f}, Iq={actual_iq:.2f}, Vd={vd}, Vq={vq}")
        
        # 更新电机模型（高频率）
        motor.update(vd/vbase, vq/vbase)

    # 绘图显示仅使用控制点的数据
    plt.figure(figsize=(12, 10))
    
    # 绘制电流响应
    plt.subplot(2, 2, 1)
    plt.plot(steps, id_values, 'b-', label='Id')
    plt.plot(steps, [target_id] * len(steps), 'b--', label='Id Target')
    plt.plot(steps, iq_values, 'r-', label='Iq')
    plt.plot(steps, [target_iq] * len(steps), 'r--', label='Iq Target')
    plt.grid(True)
    plt.xlabel('采样点')
    plt.ylabel('电流 (单位)')
    plt.title('电流响应')
    plt.legend()
    
    # 绘制电压输出
    plt.subplot(2, 2, 2)
    plt.plot(steps, vd_values, 'b-', label='Vd')
    plt.plot(steps, vq_values, 'r-', label='Vq')
    plt.grid(True)
    plt.xlabel('采样点')
    plt.ylabel('电压 (单位)')
    plt.title('控制器输出')
    plt.legend()
    
    # 绘制电流误差
    plt.subplot(2, 2, 3)
    plt.plot(steps, id_error, 'b-', label='Id Error')
    plt.plot(steps, iq_error, 'r-', label='Iq Error')
    plt.grid(True)
    plt.xlabel('采样点')
    plt.ylabel('误差 (单位)')
    plt.title('电流误差')
    plt.legend()
    
    # 绘制积分项
    plt.subplot(2, 2, 4)
    plt.plot(steps, id_integral, 'b-', label='Id Integral')
    plt.plot(steps, iq_integral, 'r-', label='Iq Integral')
    plt.grid(True)
    plt.xlabel('采样点')
    plt.ylabel('积分值')
    plt.title('积分项变化')
    plt.legend()
    
    plt.tight_layout()
    plt.show()