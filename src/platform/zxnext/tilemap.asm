

; Enable tilemap #0 layer
; bit 7: enable tilemap
        macro ep_tilemap_enable
            ld a, (ep.reg_tilemap_control)
            or %10000000
            ld (ep.reg_tilemap_control), a
            nextreg zxnext.TILEMAP_CONTROL, a
        endm


; Disable tilemap #0 layer
; bit 7: disable tilemap
        macro ep_tilemap_disable
            ld a, (ep.reg_tilemap_control)
            and %01111111
            ld (ep.reg_tilemap_control), a
            nextreg zxnext.TILEMAP_CONTROL, a
        endm

