

; Copy of TILEMAP_CONTROL register
    ; https://wiki.specnext.dev/Tilemap_Control_Register
    ; bit 7: enable tilemap
    ; bit 6: 0 = 40x32, 1 = 80x32
    ; bit 5: 0 = 16 bits per tile, 1 = 8 bits per tile
    ; bit 4: palette select: 0 = first palette, 1 = second palette
    ; bit 3: enable text mode
    ; bit 1: activate 512 tiles mode
    ; bit 0: activate "tilemap over ULA" mode
reg_tilemap_control: db 0


        include "general.asm"
        include "tilemap.asm"


