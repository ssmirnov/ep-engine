

        jp entry_point

        include "../../src/ep.asm"


entry_point:
        xor a
        ei

loop:
        call ep.set_border_color

        ld b, 10
.wait:  halt
        djnz .wait

        inc a
        and 7
        jr loop

        
