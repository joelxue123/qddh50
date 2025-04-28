#include "oscilloscope.hpp"


// if you use the oscilloscope feature you can bump up this value


void Oscilloscope::update() {
    int16_t trigger_data = trigger_src_ ? *trigger_src_ : 0.0f;
    int16_t trigger_threshold = trigger_threshold_;
    int16_t sample_data = data_src_ ? *data_src_ : 0.0f;

    if (trigger_data < trigger_threshold) {
        ready_ = true;
    }
    if (ready_ && trigger_data >= trigger_threshold) {
        capturing_ = true;
        ready_ = false;
    }
    if (capturing_) {
        if (pos_ < OSCILLOSCOPE_SIZE) {
            data_[pos_++] = sample_data;
        } else {
            pos_ = OSCILLOSCOPE_SIZE;
            capturing_ = false;
        }
    }
}
