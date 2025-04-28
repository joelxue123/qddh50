#ifndef __OSCILLOSCOPE_HPP
#define __OSCILLOSCOPE_HPP

#include <stdint.h>

// if you use the oscilloscope feature you can bump up this value
#define OSCILLOSCOPE_SIZE (512)

class Oscilloscope {
public:
    Oscilloscope(int16_t* trigger_src, int16_t trigger_threshold, int16_t* data_src)
        : trigger_src_(trigger_src), trigger_threshold_(trigger_threshold), data_src_(data_src) {}

    int16_t get_val(uint32_t index) {

        if (index > OSCILLOSCOPE_SIZE -1) {
            index = OSCILLOSCOPE_SIZE - 1;
        }

        int16_t data =  index < OSCILLOSCOPE_SIZE ? data_[index] : 0;

        if( index  == OSCILLOSCOPE_SIZE -1)
        {
            pos_ = 0;
            ready_ = false;
            capturing_ = false;
        }

        return data;
    }
    void restart() {
        pos_ = 0;
        ready_ = true;
        capturing_ = false;
    }

    void update();

    const uint32_t size_ = OSCILLOSCOPE_SIZE;
    int16_t* trigger_src_;
    int16_t trigger_threshold_;
    int16_t* data_src_;

    int16_t data_[OSCILLOSCOPE_SIZE] = {0};
    uint16_t pos_ = 0;
    bool ready_ = false;
    bool capturing_ = false;
};

#endif // __OSCILLOSCOPE_HPP