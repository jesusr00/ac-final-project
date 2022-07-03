darkhole:
    xor di, di
    mov cx, 33
    mov bx, 33

    cuadro:
        mov cx, 33
        mov ax, 0000h
        @@:
	        mov [es:di], al
	        add di, 1
	        loop @b

    mov ax, 33
    sub ax, bx
    mov dx, ax
    mov ax, 1024
    mul dx
    mov di, ax 
    cmp bx, 0
    je Agujero
    dec bx
    jmp cuadro




    Agujero:
        xor ax, ax
        xor di, di
        mov cx, 2
    ExT:
        mov ax, 07h
        mov [es:di], ax  
        mov [es:di+1], ax
        mov [es:di+31], ax 
        mov [es:di+32], ax
        mov [es:di+1024*31], ax
        mov [es:di+1024*31+31], ax
        mov [es:di+1024*31+1], ax
        mov [es:di+1024*31+32], ax
        add di, 1024
        loop ExT    
   
      
    mov di,1024*6+2
    mov cx, 21
    LadoMa:
        mov [es:di], ax
        mov [es:di+1], ax
        mov [es:di+27], ax
        mov [es:di+28], ax	 
        add di, 1024
        loop LadoMa 
   
    mov di, 1024*8+6
    mov cx, 17
    LadoMed:
        mov [es:di], ax  
        mov [es:di+1], ax
        mov [es:di+19], ax
        mov [es:di+20], ax	 
        add di, 1024
        loop LadoMed  
   
    mov di, 1024*10+10
    mov cx, 13
    LadoMen:
        mov [es:di], ax 
        mov [es:di+1], ax
        mov [es:di+11], ax
        mov [es:di+12], ax	 
        add di, 1024
        loop LadoMen
   
    mov di, 1024*5+4
    mov cx, 2
    EsqM:
        mov [es:di], ax
        mov [es:di-1024*2+2], ax
        mov [es:di+1024*25+21], ax
        mov [es:di+1024*25+21-1024*2+2], ax
        mov [es:di+1], ax
        mov [es:di-1024*2+2+1], ax
        mov [es:di+1024*25+21+1], ax
        mov [es:di+1024*25+21-1024*2+2+1], ax
        sub di, 1024
        loop EsqM 
    
    mov di, 1024*27+4
    mov cx, 2
    EsqMa:
        mov [es:di], ax
        mov [es:di+1024*2+2], ax
        mov [es:di-1024*25+21], ax
        mov [es:di-1024*25+21+1024*2+2], ax
        mov [es:di+1], ax
        mov [es:di+1024*2+2+1], ax
        mov [es:di-1024*25+21+1], ax
        mov [es:di-1024*25+21+1024*2+2+1], ax
        add di,1024
        loop EsqMa 
   
    mov di,1024*2+12
    mov cx, 9
    LadoSup:
        mov [es:di], ax
        mov [es:di+1024*27], ax
        mov [es:di+1024], ax
        mov [es:di+1024*28], ax
        add di, 1 
        loop LadoSup
   
    mov di,1024*6+14
    mov cx, 5
    LadoI:
        mov [es:di], ax
        mov [es:di+1024*19], ax
        mov [es:di+1024], ax
        mov [es:di+1024*20], ax
        add di, 1
        loop LadoI
		   
    mov di, 1024*8+12
    mov cx, 2

    ExTin:
        mov [es:di], ax  
        mov [es:di+1], ax
        mov [es:di+7], ax 
        mov [es:di+8], ax
        mov [es:di+1024*15], ax
        mov [es:di+1024*15+7], ax
        mov [es:di+1024*15+1], ax
        mov [es:di+1024*15+8], ax
        add di, 1024
        loop ExTin	 
   
    mov di,1024*7+8
    mov cx, 2
    EsqIN:
        mov [es:di-1024*2+2], ax
        mov [es:di], ax
        mov [es:di+1024*21+13], ax
        mov [es:di+1024*21+13-1024*2+2], ax
        mov [es:di+1], ax
        mov [es:di-1024*2+2+1], ax
        mov [es:di+1024*21+13+1], ax
        mov [es:di+1024*21+13-1024*2+2+1], ax
        sub di,1024
        loop EsqIN 
    
    mov di, 1024*25+8
    mov cx, 2
    EsqI:
        mov [es:di], ax
        mov [es:di+1024*2+2], ax
        mov [es:di-1024*21+13], ax
        mov [es:di-1024*21+13+1024*2+2], ax
        mov [es:di+1], ax
        mov [es:di+1024*2+2+1], ax
        mov [es:di-1024*21+13+1], ax
        mov [es:di-1024*21+13+1024*2+2+1], ax
        add di,1024
        loop EsqI

ret