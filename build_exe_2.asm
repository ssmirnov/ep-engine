

        display "Build output.exe..."

        OUTPUT "bin/output.exe"
            incbin "obj/exeheader.C"
            incbin "obj/code.C"

            ; append other files to output.exe

        OUTEND


