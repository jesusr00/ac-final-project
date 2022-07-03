format binary as 'iso'
N equ 10
org 7c00h
    
  mov	ah,0x02      ;usar el BIOS para cargar
	mov	al,0x04      ;cantidad de sectores
	mov	ch,0x00
	mov	cl,0x02      ;a partir del segundo sector logico
	mov	dh,0x00
	mov	dl,0x80      ;del primer disco duro
	mov	bx,0x800     ;y escribir el contenido en 0x800:0
	mov	es,bx
	mov	bx,0x0000
  
  @@: int	0x13
	    jc	@b

	jmp	8000h	
    

    ; mov ah,0x02
    ; mov al,N
    ; mov ch,0x00
    ; mov cl,0x02
    ; mov dh,0x00
    ; mov dl,0x80
    ; mov bx,0x8000
    ; mov es,bx


    ; mov bx,0x0000
    ; @@: 
    ;   int 13h
    ;   jc @b
     
  
times 510-($-$$) db 0
dw 0xaa55

org 8000h
    mov ax, cs
    mov ds, ax
    mov ax, 4F02h ; establece el modo svga
    mov bx, 105h  ; mode de video 1024x768 con 256 colores
    int 10h       ; lanza la interrupcion

    mov ax, 0a000h; direccion de la memoria de video
    mov es, ax



  jmp main

  include '../main/main.asm'
  include '../map/dark_hole.asm'
  include '../map/frame.asm'

  

times (N*512)-($-$$) db 0
