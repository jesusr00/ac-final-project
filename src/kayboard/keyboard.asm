keyboard:	
	in  al,60h		    ; Leer el buffer del controlador del teclado
	cmp	al,LEFT 		; Verificar si la tecla es A
	je	.left
	cmp	al,DOWN 		; Verificar si la tecla es S
	je	.down
	cmp	al,RIGHT		; Verificar si la tecla es D
	je	.right
	; cmp	al,UP			; Verificar si la tecla es W
	; je	.up
	jmp	.exit			; Si no hay ninguna tecla de interés, terminar

		
	.left: 
		sub	[col],SPEED  ; actualizar la coordenada en el framebuffer
		jmp	.update 	 ; Actualizar la pantalla

	.down:
        jmp codigo 

	.right:
		add	[col],SPEED
		jmp	.update

	.up:
		sub	[fil],SPEED
		jmp .update
    
	.update:
		call clear
		call drawRedball		; Dibujar el objeto

	.exit: 
		mov	al,20h			; Fin de interrupción hardware
		out	20h,al			; al pic maestro
		iret

