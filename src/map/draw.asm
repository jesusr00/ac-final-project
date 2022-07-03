draw:    
    mov cx, 32		     ; ecx cuant las filas del objeto(32)
    fila: 
    mov bx,32		     ; ebx contará las columnas del objeto(32)
    siguiente: 
        mov al,[si]		     ; Obtener el primer byte del objeto
	    cmp al, 00		     ; "Trampa" para simular transparencia, si el dato es cero no se dibuja ;-)
	    je @f
	    mov [edi],al
	    @@: 
            inc edi
	        inc si
	        dec bx
	        cmp bx,0
	        jne siguiente
	        add edi,1024-32	     ; Tener en cuanta que se han dibujado 16 píxeles
	        loop fila
    ret