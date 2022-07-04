format binary as 'iso'

N equ 40
org 7c00h
    
  mov	ah, 0x02      ;usar el BIOS para cargar
	mov	al, N      ;cantidad de sectores
	mov	ch, 0x00
	mov	cl, 0x02      ;a partir del segundo sector logico
	mov	dh, 0x00
	mov	dl, 0x80      ;del primer disco duro
	mov	bx, 0x800     ;y escribir el contenido en 0x800:0
	mov	es, bx
	mov	bx, 0x0000
  
  @@: int	0x13
	    jc	@b

	jmp	8000h	
        
  
times 510-($-$$) db 0
dw 0xaa55

org 8000h
    mov ax, cs
    mov ds, ax
    mov ax, 4F02h ; establece el modo svga
    mov bx, 105h  ; mode de video 1024x768 con 256 colores
    int 10h       ; lanza la interrupcion

    call video



  jmp main

  include '../main/main.asm'
  include '../map/dark_hole.asm'
  include '../map/frame.asm'
  include '../map/boll.asm'
  include '../timer/timer.asm'
  include '../video/graphic-mode.asm'
  include '../video/clear.asm'
  include '../map/flecha_izquierda.asm'
  include '../map/draw.asm'
  include '../map/number.asm'

  

times (N*512)-($-$$) db 0
