frame: 
    ; mov cx, 512
    xor di, di
    mov al, 0001b
    mov ah, 0001b
    ; @@:
    ;     mov [es:di], ax
    ;     mov [es:di+1024], ax
    ;     mov [es:di+2048], ax
    ;     mov [es:di+3076], ax
    ;     mov [es:di+4096], ax
    ;     mov [es:di+5120], ax
    ;     mov [es:di+6144], ax
    ;     mov [es:di+7168], ax
    ;     mov [es:di+8192], ax
    ;     mov [es:di+9216], ax
    ;     mov [es:di+10240], ax
    ;     add di, 2
    ;     loop @b 

    xor di, di
    mov cx, 768
    mov edx, 0a000h
    @@:
        mov [edx], ax
        add edx, 1024
        loop @b

ret