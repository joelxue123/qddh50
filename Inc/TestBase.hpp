#ifndef __TESTBASE_HPP
#define __TESTBASE_HPP


#include "component.hpp"

class TestBase {
    public:
        virtual ~TestBase() = default;
        virtual void update(uint32_t timestamp) = 0;
        
        // Generic output interface
        float output_;

        virtual void start_bandwidth_test() { }
        virtual void stop_bandwidth_test() { }
    
    protected:
        uint32_t timestamp_ = 0;
    };

#endif // __TESTBASE_HPP