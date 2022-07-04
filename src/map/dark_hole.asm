darkhole:
    xor edi, edi
    mov cx, 33
    mov bx, 33

    cuadro:
	mov cx, 33
	mov ax, 0000h
	@@:
		mov [edi], al
		add edi, 1
		loop @b

    mov ax, 33
    sub ax, bx
    mov dx, ax
    mov ax, 1024
    mul dx
    mov edi, ax
    cmp bx, 0
    je Agujero
    dec bx
    jmp cuadro




    Agujero:
	xor ax, ax
	xor edi, edi
	mov cx, 2
    ExT:
	mov ax, 07h
	mov [edi], ax
	mov [edi+1], ax
	mov [edi+31], ax
	mov [edi+32], ax
	mov [edi+1024*31], ax
	mov [edi+1024*31+31], ax
	mov [edi+1024*31+1], ax
	mov [edi+1024*31+32], ax
	add edi, 1024
	loop ExT    
   
      
    mov edi,1024*6+2
    mov cx, 21
    LadoMa:
	mov [edi], ax
	mov [edi+1], ax
	mov [edi+27], ax
	mov [edi+28], ax
	add edi, 1024
	loop LadoMa 
   
    mov edi, 1024*8+6
    mov cx, 17
    LadoMed:
	mov [edi], ax
	mov [edi+1], ax
	mov [edi+19], ax
	mov [edi+20], ax
	add edi, 1024
	loop LadoMed  
   
    mov edi, 1024*10+10
    mov cx, 13
    LadoMen:
	mov [edi], ax
	mov [edi+1], ax
	mov [edi+11], ax
	mov [edi+12], ax
	add edi, 1024
	loop LadoMen
   
    mov edi, 1024*5+4
    mov cx, 2
    EsqM:
	mov [edi], ax
	mov [edi-1024*2+2], ax
	mov [edi+1024*25+21], ax
	mov [edi+1024*25+21-1024*2+2], ax
	mov [edi+1], ax
	mov [edi-1024*2+2+1], ax
	mov [edi+1024*25+21+1], ax
	mov [edi+1024*25+21-1024*2+2+1], ax
	sub edi, 1024
	loop EsqM 
    
    mov edi, 1024*27+4
    mov cx, 2
    EsqMa:
	mov [edi], ax
	mov [edi+1024*2+2], ax
	mov [edi-1024*25+21], ax
	mov [edi-1024*25+21+1024*2+2], ax
	mov [edi+1], ax
	mov [edi+1024*2+2+1], ax
	mov [edi-1024*25+21+1], ax
	mov [edi-1024*25+21+1024*2+2+1], ax
	add edi,1024
	loop EsqMa 
   
    mov edi,1024*2+12
    mov cx, 9
    LadoSup:
	mov [edi], ax
	mov [edi+1024*27], ax
	mov [edi+1024], ax
	mov [edi+1024*28], ax
	add edi, 1
	loop LadoSup
   
    mov edi,1024*6+14
    mov cx, 5
    LadoI:
	mov [edi], ax
	mov [edi+1024*19], ax
	mov [edi+1024], ax
	mov [edi+1024*20], ax
	add edi, 1
	loop LadoI
		   
    mov edi, 1024*8+12
    mov cx, 2

    ExTin:
	mov [edi], ax
	mov [edi+1], ax
	mov [edi+7], ax
	mov [edi+8], ax
	mov [edi+1024*15], ax
	mov [edi+1024*15+7], ax
	mov [edi+1024*15+1], ax
	mov [edi+1024*15+8], ax
	add edi, 1024
	loop ExTin	 
   
    mov edi,1024*7+8
    mov cx, 2
    EsqIN:
	mov [edi-1024*2+2], ax
	mov [edi], ax
	mov [edi+1024*21+13], ax
	mov [edi+1024*21+13-1024*2+2], ax
	mov [edi+1], ax
	mov [edi-1024*2+2+1], ax
	mov [edi+1024*21+13+1], ax
	mov [edi+1024*21+13-1024*2+2+1], ax
	sub edi,1024
	loop EsqIN 
    
    mov edi, 1024*25+8
    mov cx, 2
    EsqI:
	mov [edi], ax
	mov [edi+1024*2+2], ax
	mov [edi-1024*21+13], ax
	mov [edi-1024*21+13+1024*2+2], ax
	mov [edi+1], ax
	mov [edi+1024*2+2+1], ax
	mov [edi-1024*21+13+1], ax
	mov [edi-1024*21+13+1024*2+2+1], ax
	add edi,1024
	loop EsqI
ret