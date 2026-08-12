

    ifused clear_ula_screen
clear_ula_screen:
        ep_set_border_color #00

        ld hl, #4000
        ld de, #4001
        ld bc, #1800
        ld (hl), l
        ldir
        
        ld bc, #02ff
        ld (hl), 117o
        ldir
        ret
    endif


