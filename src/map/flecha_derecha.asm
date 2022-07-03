rightArrow:
    xor ax, ax
    mov cx, 33
    mov bx, 33
    call video
Marco:

      mov cx, 33
      mov ax, 0101h
      @@:
	mov [edi], al
	add edi, 1
	loop @b

      mov ax, 33
      sub ax, bx
      mov dx, ax
      mov ax, 1024
      mul dx
      call video
      add edi, eax 
      cmp bx, 0
      je Mosaico
      dec bx
      jmp Marco

Mosaico:
    mov cx, 27
    call video
    add edi, 1024*3+3

Lozas:

      call video
      mov ax, 0303h
      push cx 
      push bx
      mov ax, 1024
      mov bx, ax

      @@:
            mul cx
            mov [edi+eax], bl 
            loop @b

      pop bx
      pop cx
       
      
	add edi, 1
	
      loop Lozas 
      
      mov cx, 27
      call video
      add edi, 1024*27+3
      


  Flecha:
      call video 
	add edi, 1024*12+8
	mov cx, 8
	xor ax, ax
 cuadrado:
	mov al, 00h
	mov [edi], al
	mov [edi+1024], al
      mov [edi+1024*2], al
      mov [edi+1024*3], al
      mov [edi+1024*4], al
      mov [edi+1024*5], al
      mov [edi+1024*6], al
      mov [edi+1024*7], al
      mov [edi+1024*8], al
      inc edi
      loop cuadrado
      call video
	add edi, 1024*8+16
	mov cx, 17
triangulo:
      mov [edi], al
      add edi, 1024
      loop triangulo
      call video 
      add edi, 1024*9+17
	mov cx, 15
triangul:
      mov [edi], al
      add edi, 1024
      loop triangul
      call video
      add edi, 1024*10+18
	mov cx, 13
triangu:
      mov [edi], al
      add edi, 1024
      loop triangu
      call video
      add edi, 1024*11+19
	mov cx, 11
triang:
      mov [edi], al
      add edi, 1024
      loop triang
      call video
      add edi, 1024*12+20
	mov cx, 9
trian:
      mov [edi], al
      call video
      add edi, 1024
      loop trian

call video
mov edi, 1024*13+21
	mov cx, 7
tria:
      mov [edi], al
      add edi, 1024
      loop tria
call video 
mov edi, 1024*14+22
	mov cx, 5
tri:
      mov [edi], al
      add edi, 1024
      loop tri

call video
mov edi, 1024*15+23
	mov cx, 3
tr:
      mov [edi], al
      add edi, 1024
      loop tr
call video
mov edi, 1024*16+24
 mov [edi], al
ret
