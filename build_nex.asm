

        device zxspectrumnext
        define ZXNEXT


        org #8000
        include "build_example.asm"


        if _ERRORS == 0
            SAVENEX OPEN "bin/output.nex", __entry_point, $C000, 0 ; start addr, stack addr, 16Kb bank at #c000
            SAVENEX CORE 2, 0, 0        ; Next core 2.0.0 required as minimum
            SAVENEX CFG 0, 0, 1, 0      ; border color, file handle in BC, reset NextRegs, 2MB required
            SAVENEX BANK 5,2,0
            SAVENEX CLOSE
            ;CSPECTMAP "bin/output.cspectmap"
        endif



