

        jp main

        include "../../src/ep.asm"


main:
        call clear_ula_screen

        ; use macro
        ep_initialize
        ; use call
        call ep.initialize

        ; by default: Tilemap page = #05, Tiles page = #05
        ifdef ZXNEXT
            ld hl, 0
            ld de, #5b00
            ld bc, #2500
            ldir
        endif

        ; by default: Tilemap page = #00, Tiles page = #00
        ifdef TSCONF
            ld hl, 0
            ld de, #c000
            ld bc, #4000
            ldir

            ; set random palette
            ld hl, 2 ; keep color #00 as Black
            ld de, 2 ; fmaps+0
            ld bc, 15*16-2 ; keep color #00 and colors #f0..#ff
            ldir
        endif

        xor a
        ei
loop:
        ; use macro
        ep_tilemap_enable
        ; use call
        call ep.tilemap_enable

        ld b, 25
        halt : djnz $-1

        ; use macro
        ep_tilemap_disable
        ; use call
        call ep.tilemap_disable

        ld b, 25
        halt : djnz $-1

        jr loop

        
