

        macro ep_initialize
        endm
        

        macro ep_set_cpu_speed speed?
        endm


        macro ep_set_border_color color?
            ld a, color?
            out (#fe), a
        endm


