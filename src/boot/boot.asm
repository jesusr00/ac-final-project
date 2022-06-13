           
format binary as 'img'
    mov ax, cs
    mov ds, ax
    xor ax, ax

    
    mov ax, 13h
    int 10h

    mov ax, 0a000h
    mov es, ax
    xor ax, ax
    mov bl, 200
    mov bh, 5

    xor dx, dx

    linea:
        mov di, 320
        mov al, bh
        mul di
        mov di, ax
        xor ax, ax
        mov al, bh
        add di, ax

        mov cl, bl
        sub bl,2
        @@:
           mov al, 0100b
           mov ah, 0100b
           mov [es:di], ax
           add di, 1
           loop @b

        add bh, 1
        cmp bl, 0
        jnz linea



jmp $



times 510-($-$$) db 0
dw 0xaa55