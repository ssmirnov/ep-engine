

        jp main

        include "../../src/ep.asm"


main:
        ; use macro
        ep_initialize
        ; use call
        ;call ep.initialize

        xor a
        ei
loop:
        ; use macro
        ep_set_border_color a
        ; use call
        call ep.set_border_color

        ld b, 10
.wait:  halt
        djnz .wait

        inc a
        and 7
        jr loop

        
