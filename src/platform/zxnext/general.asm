

        macro ep_set_cpu_speed speed?
            nextreg zxnext.CPU_SPEED, speed?
        endm


        macro ep_initialize
            ep_set_cpu_speed zxnext.CPU_SPEED_28MHZ
        endm


        macro ep_set_border_color color?
            out (#fe), color?
        endm




