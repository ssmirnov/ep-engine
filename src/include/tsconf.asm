
        ifndef __TSCONF
        define __TSCONF


        /*
        macro tsreg reg?, value?
            ld a, value?
            ld bc, reg?
            out (c), a
        endm
        */

        macro tsreg reg?, value?
            define T_value?
            ifndef T_a
                ld a, value?
            endif
            undefine T_value?
            ld (#0400 + high reg?), a
        endm

        macro tsreg16 reg?, value?
            define T_value?
            ifndef T_hl
                ld hl, value?
            endif
            undefine T_value?
            ld (#0400 + high reg?), hl
        endm


        module tsconf
            include "tsconf_definitions.asm"
        endmodule


        endif

