

; Copy of TSCONFIG register
    ; bit 7: sprite layer enabled
    ; bit 6: tilemap #1 layer enabled
    ; bit 5: tilemap #0 layer enabled
    ; bit 3: zero-tile is visible for tilemap #1
    ; bit 2: zero-tile is visible for tilemap #0
reg_tsconfig: db 0


        include "general.asm"
        include "tilemap.asm"


