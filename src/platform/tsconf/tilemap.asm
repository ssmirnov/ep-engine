

; Enable tilemap #1 layer
; bit 5: enable tilemap 1
        macro ep_tilemap_enable
            ld a, (ep.reg_tsconfig)
            or tsconf.TSU_T0EN ; %00100000
            ld (ep.reg_tsconfig), a
            tsreg tsconf.TSCONFIG, a
        endm


; Disable tilemap #1 layer
; bit 5: enable tilemap 1
        macro ep_tilemap_disable
            ld a, (ep.reg_tsconfig)
            and %11011111
            ld (ep.reg_tsconfig), a
            tsreg tsconf.TSCONFIG, a
        endm


; Enable tilemap #2 layer
; bit 6: enable tilemap 2
        macro ep_tilemap2_enable
            ld a, (ep.reg_tsconfig)
            or tsconf.TSU_T1EN ; %01000000
            ld (ep.reg_tsconfig), a
            tsreg tsconf.TSCONFIG, a
        endm


; Disable tilemap #2 layer
; bit 6: enable tilemap 2
        macro ep_tilemap2_disable
            ld a, (ep.reg_tsconfig)
            and %10111111
            ld (ep.reg_tsconfig), a
            tsreg tsconf.TSCONFIG, a
        endm


