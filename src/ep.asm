

        module ep

        ifdef ZXNEXT
            include "platform/zxnext/core.asm"
        endif
        ifdef TSCONF
            include "platform/tsconf/core.asm"
        endif
        ifdef SPRINTER
            include "platform/sprinter/core.asm"
        endif
        ifdef ZX128K
            include "platform/zx128k/core.asm"
        endif


; General
set_border_color:       equ _set_border_color


        endmodule


