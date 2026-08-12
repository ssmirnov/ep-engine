

        device zxspectrum128

        define SPRINTER

        org #8000

EXEHeaderLength: equ 512
EXEHeader:
        db "EXE"                                ; +00 Идентификатор EXE файла
        db 0                                    ; +03 Версия EXE файла
        dw __compiled_code-EXEHeader            ; +04 Начало исполняемого кода (смещение в байтах)
        dw 0                                    
        dw __compiled_code_end-__compiled_code  ; +08 Размер первичного загрузчика или 0
        dw 0,0,0
        dw __compiled_code                      ; +16 Адрес расположения кода в памяти
        dw __compiled_code                      ; +18 Адрес запуска (регистр PC)
        dw #c000                                ; +20 Адрес расположения стека (регистр SP)
        block EXEHeaderLength-($-EXEHeader)

__compiled_code:


        include "build_example.asm"


__compiled_code_end:
__compiled_code_length: equ __compiled_code_end-__compiled_code

        display "Code start: ", __compiled_code
        display "Code length: ", /D, __compiled_code_length, " bytes"
        display "Code end: ", __compiled_code_end
        display "EXE+Code length: ", /D, EXEHeaderLength + __compiled_code_length

        if _ERRORS == 0
            display "Save binaries to 'obj' dir..."

            savebin "obj/exeheader.C", EXEHeader, EXEHeaderLength
            savebin "obj/code.C", __compiled_code, __compiled_code_length
            savebin "obj/.build-succeeded", 0, 1

            ;savebin "bin/output.exe", EXEHeader, __compiled_code_end-EXEHeader
            bplist "bin/bpx.ini" unreal
        endif


