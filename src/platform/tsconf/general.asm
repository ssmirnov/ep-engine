

        include "../../include/tsconf.asm"


        macro ep_set_cpu_speed speed?
            ld a, speed?
            or tsconf.SYS_CACHEEN ; also enable cache
            tsreg tsconf.SYSCONFIG, a
        endm


        macro ep_initialize
            ; enable fpga mapping from address #0000
            ld a, tsconf.FM_EN ; %00010000
            ld bc, tsconf.FMADDR
            out (c), a

            ; set CPU clock to 14 MHz
            ep_set_cpu_speed tsconf.CPU_SPEED_MAX
        endm


        macro ep_set_border_color color?
            tsreg tsconf.BORDER, color?
        endm


