

        ifdef ZXNEXT
            include "include/zxnext.asm"
        endif
        ifdef TSCONF
            include "include/tsconf.asm"
        endif
        ifdef SPRINTER
            
        endif
        ifdef ZX128K
            
        endif


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
initialize:
        ep_initialize
        ret

set_cpu_speed:
        ep_set_cpu_speed a
        ret

set_border_color
        ep_set_border_color a
        ret


        endmodule


