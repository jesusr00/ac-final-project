frame: 
    call video
    mov cx, 512
    mov al, 0001b
    mov ah, 0001b
    
    @@:
        mov [edi], ax
        mov [edi+1024], ax
        mov [edi+1024*2], ax
        mov [edi+1024*3], ax
        mov [edi+1024*4], ax
        mov [edi+1024*5], ax
        mov [edi+1024*6], ax
        mov [edi+1024*7], ax
        mov [edi+1024*8], ax
        mov [edi+1024*9], ax
        mov [edi+1024*10], ax
        
        add edi, 2
        loop @b 

    @@:
        mov [edi+1024*768], ax
        mov [edi+1024*767], ax
        mov [edi+1024*766], ax
        mov [edi+1024*765], ax
        mov [edi+1024*764], ax
        mov [edi+1024*763], ax
        mov [edi+1024*762], ax
        mov [edi+1024*761], ax
        mov [edi+1024*760], ax
        mov [edi+1024*759], ax
        mov [edi+1024*758], ax

        add edi, 2
        loop @b 

    call video
    mov cx, 768
    @@:
        mov [edi], ax
        mov [edi+2], ax
        mov [edi+4], ax
        mov [edi+6], ax
        mov [edi+8], ax
        mov [edi+1022], ax
        mov [edi+1020], ax
        mov [edi+1018], ax
        mov [edi+1016], ax
        mov [edi+1014], ax
        add edi, 1024
        loop @b


ret