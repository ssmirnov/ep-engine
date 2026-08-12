

__entry_point:
        include "examples/general/set_border_color.asm"

        display "Code start:  ", __entry_point
        display "Code end:    ", $
        display "Code length: ", /D, $-__entry_point


