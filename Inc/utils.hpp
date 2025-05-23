
#ifndef __UTILS_H
#define __UTILS_H

#include <stdint.h>
#include <math.h>

/**
 * @brief Flash size register address
 */
#define ID_FLASH_ADDRESS (0x1FFF7A22)

/**
 * @brief Device ID register address
 */
#define ID_DBGMCU_IDCODE (0xE0042000)

/**
 * "Returns" the device signature
 *
 * Possible returns:
 *    - 0x0413: STM32F405xx/07xx and STM32F415xx/17xx)
 *    - 0x0419: STM32F42xxx and STM32F43xxx
 *    - 0x0423: STM32F401xB/C
 *    - 0x0433: STM32F401xD/E
 *    - 0x0431: STM32F411xC/E
 *
 * Returned data is in 16-bit mode, but only bits 11:0 are valid, bits 15:12 are always 0.
 * Defined as macro
 */
#define STM_ID_GetSignature() ((*(uint16_t *)(ID_DBGMCU_IDCODE)) & 0x0FFF)

/**
 * "Returns" the device revision
 *
 * Revisions possible:
 *    - 0x1000: Revision A
 *    - 0x1001: Revision Z
 *    - 0x1003: Revision Y
 *    - 0x1007: Revision 1
 *    - 0x2001: Revision 3
 *
 * Returned data is in 16-bit mode.
 */
#define STM_ID_GetRevision() (*(uint16_t *)(ID_DBGMCU_IDCODE + 2))

/**
* "Returns" the Flash size
*
* Returned data is in 16-bit mode, returned value is flash size in kB (kilo bytes).
*/
#define STM_ID_GetFlashSize() (*(uint16_t *)(ID_FLASH_ADDRESS))

#ifdef M_PI
#undef M_PI
#endif
#define M_PI (3.14159265358979323846f)

#define MACRO_MAX(x, y) (((x) > (y)) ? (x) : (y))
#define MACRO_MIN(x, y) (((x) < (y)) ? (x) : (y))

#define SQ(x) ((x) * (x))

#ifdef __cplusplus

#include <array>

/**
 * @brief Small helper to make array with known size
 * in contrast to initializer lists the number of arguments
 * has to match exactly. Whereas initializer lists allow
 * less arguments.
 */
template<class T, class... Tail>
std::array<T, 1 + sizeof...(Tail)> make_array(T head, Tail... tail)
{
    return std::array<T, 1 + sizeof...(Tail)>({ head, tail ... });
}

extern "C" {
#endif

static const float one_by_sqrt3 = 0.57735026919f;
static const float two_by_sqrt3 = 1.15470053838f;
static const float sqrt3_by_2 = 0.86602540378f;

// like fmodf, but always positive
static inline float fmodf_pos(float x, float y) {
    float out = fmodf(x, y);
    if (out < 0.0f)
        out += y;
    return out;
}

/**
 * @brief Similar to modulo operator, except that the output range is centered
 * around zero.
 * The returned value is always in the range [-pm_range, pm_range).
 */
static inline float wrap_pm(float x, float pm_range) {
    return fmodf_pos(x + pm_range, 2.0f * pm_range) - pm_range;
}

static inline float wrap_pm_pi(float theta) {
    return wrap_pm(theta, M_PI);
}

// Compute rising edge timings (0.0 - 1.0) as a function of alpha-beta
// as per the magnitude invariant clarke transform
// The magnitude of the alpha-beta vector may not be larger than sqrt(3)/2
// Returns 0 on success, and -1 if the input was out of range
int SVM(float alpha, float beta, float* tA, float* tB, float* tC);

float fast_atan2(float y, float x);
float horner_fma(float x, const float *coeffs, size_t count);
int mod(int dividend, int divisor);

uint32_t deadline_to_timeout(uint32_t deadline_ms);
uint32_t timeout_to_deadline(uint32_t timeout_ms);
int is_in_the_future(uint32_t time_ms);

uint32_t micros(void);
void delay_us(uint32_t us);

float our_arm_sin_f32(float x);
float our_arm_cos_f32(float x);
uint8_t calcCRC(uint8_t * buffer, uint8_t length);
int32_t fsgn(float num);
int32_t saturation(int32_t num, int32_t min, int32_t max);
typedef struct {
    float w0;  // Notch frequency
    float r;   // Notch width parameter
    float a1, a2, b1, b2;  // Filter coefficients
    float x1, x2, y1, y2;  // State variables
} NotchFilter;
void initNotchFilter(NotchFilter* filter, float frequency, float sampleRate, float bandwidth);
float applyNotchFilter(NotchFilter* filter, float input);

void cordic_sin_cos(float theta,float *sin,float *cos);
void test_svm(float mod_q, float mod_d, float *theta, float *ta, float *tb, float *tc) ;
void clark_park(float *iq, float *id, float theta, float ia, float ib);
#ifdef __cplusplus
}
#endif


__attribute__((optimize("-fno-finite-math-only")))
inline bool is_nan(float x) {
    return __builtin_isnan(x);
}


#endif  //__UTILS_H
