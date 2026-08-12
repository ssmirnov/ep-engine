

        device zxspectrum4096
        define TSCONF


        org #8000
        include "build_example.asm"


        if _ERRORS == 0
            savebin "bin/page5.C", #4000, #4000
            savebin "bin/page2.C", #8000, #4000
            page 0
            savebin "bin/page0.C", #c000, #4000

            savebin "bin/.build-succeeded", 0, 1

            ;bplist "../../bin/unreal-0.37.9-ts/bpx.ini" unreal
        endif



