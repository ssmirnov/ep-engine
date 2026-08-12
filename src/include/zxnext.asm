
        ifndef __ZXNEXT
        define __ZXNEXT


        macro nextslot0 value?
            slot 0 : page (value?) * 2
            slot 1 : page (value?) * 2 + 1
        endm

        macro nextslot1 value?
            slot 2 : page (value?) * 2
            slot 3 : page (value?) * 2 + 1
        endm

        macro nextslot2 value?
            slot 4 : page (value?) * 2
            slot 5 : page (value?) * 2 + 1
        endm

        macro nextslot3 value?
            slot 6 : page (value?) * 2
            slot 7 : page (value?) * 2 + 1
        endm


        macro nextport port?, value?
            ld a, value?
            ld bc, port?
            out (c), a
        endm

        macro nextport_a port?
            ld bc, port?
            out (c), a
        endm


        module zxnext
            include "zxnext_definitions.asm"
            include "zxnext_enums.asm"
        endmodule


        endif


