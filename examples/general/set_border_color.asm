

        jp main

        include "../../src/ep.asm"


main:
        call clear_ula_screen

        ; use macro
        ep_initialize
        ; use call
        call ep.initialize

        xor a
        ei
loop:

        ifdef TSCONF
            ; in TS-Config mode
            ; standard ZX Spectrum colors are mapped to #f0...#ff indices by default
            or #f0
        endif

        ; use macro
        ep_set_border_color a
        ifndef SPRINTER
            ; use call
            call ep.set_border_color
        endif

        ld b, 10
        halt : djnz $-1

        inc a
        and 7
        jr loop

        
