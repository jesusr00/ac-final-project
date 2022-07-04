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

    call video
    mov cx, 768
    @@:
        mov [edi+39], al
        mov [edi+39+33], al
        mov [edi+39+33*2], al
        mov [edi+39+33*3], al
        mov [edi+39+33*4], al
        mov [edi+39+33*5], al
        mov [edi+39+33*6], al
        mov [edi+39+33*7], al
        mov [edi+39+33*8], al
        mov [edi+39+33*9], al
        mov [edi+39+33*10], al
        mov [edi+39+33*11], al
        mov [edi+39+33*12], al
        mov [edi+39+33*13], al
        mov [edi+39+33*14], al
        mov [edi+39+33*15], al
        mov [edi+39+33*16], al
        mov [edi+39+33*17], al
        add edi, 1024
        loop @b

        call video
        mov cx, 768
        @@:
            mov [edi+39+33*18], al
            mov [edi+39+33*19], al
            mov [edi+39+33*20], al
            mov [edi+39+33*21], al
            mov [edi+39+33*22], al
            mov [edi+39+33*23], al
            mov [edi+39+33*24], al
            mov [edi+39+33*25], al
            mov [edi+39+33*26], al
            mov [edi+39+33*27], al
            mov [edi+39+33*28], al
            mov [edi+39+33*29], al
            add edi, 1024

            loop @b


    mov cx, 512
    mov eax, 01010101h
    call video
    @@:
        mov [edi+1024*39], eax
        mov [edi+1024*72], eax
        mov [edi+1024*105], eax
        mov [edi+1024*138], eax
        mov [edi+1024*171], eax
        mov [edi+1024*204], eax
        mov [edi+1024*237], eax
        mov [edi+1024*270], eax
        mov [edi+1024*303], eax
        mov [edi+1024*336], eax
        mov [edi+1024*369], eax
        mov [edi+1024*402], eax
        mov [edi+1024*435], eax
        mov [edi+1024*468], eax
        mov [edi+1024*501], eax

        add edi, 2
        loop @b 


        mov cx, 512
    mov eax, 01010101h
    call video
    @@:
        mov [edi+1024*534], eax
        mov [edi+1024*567], eax
        mov [edi+1024*600], eax
        mov [edi+1024*633], eax
        mov [edi+1024*666], eax
        mov [edi+1024*699], eax
        mov [edi+1024*732], eax
    
        add edi, 2
        loop @b 

    mov [arrf], 172; fila
    mov [arrc], 172; columna
    call drawLeftArrow

    mov [arrf], 172; fila
    mov [arrc], 469; columna
    call drawLeftArrow

    mov [arrf], 304; fila
    mov [arrc], 271; columna
    call drawLeftArrow

    mov [arrf], 403; fila
    mov [arrc], 667; columna
    call drawLeftArrow

    mov [arrf], 568; fila
    mov [arrc], 238; columna
    call drawLeftArrow
ret