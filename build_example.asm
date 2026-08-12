

__entry_point:
        ; General
        ;include "examples/general/set_border_color.asm"

        ; Tilemap
        include "examples/tilemap/enable_disable_tilemap.asm"

        include "examples/shared.asm"

        display "Code start:  ", __entry_point
        display "Code end:    ", $
        display "Code length: ", /D, $-__entry_point


