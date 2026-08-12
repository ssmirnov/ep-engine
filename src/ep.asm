

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
    ifused initialize
initialize:
        ep_initialize
        ret
    endif

    ifused set_cpu_speed
set_cpu_speed:
        ep_set_cpu_speed a
        ret
    endif

    ifused set_border_color
set_border_color:
        ep_set_border_color a
        ret
    endif


; Tilemap
    ifused tilemap_enable
tilemap_enable:
        ep_tilemap_enable
        ret
    endif

    ifused tilemap_disable
tilemap_disable:
        ep_tilemap_disable
        ret
    endif


        endmodule


