main: 
    

    call frame
    mov bh, 100; fila
    mov bl, 100; columna
    call drawRedball
    ; call darkhole

jmp $

    video:
        push eax
        mov eax, 0fd000000h
        mov edi, eax
        pop eax
    ret

    res dw 1