; 00 cuadro en bnaco
; 01 al 05 numero 
; 06 flecha izquierda
; 07 flecha derecha
; 08 agujero 
; 09 bloque

background:
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,06,00,00,00,06,00,06,00,00,00,00,00,00,00,00,00,00,09,00,00,00,00,00,00,00,00,07
    dd 09,00,00,00,00,00,00,00,00,00,00,00,06,00,07,00,00,00,09,07,00,00,07,00,00,09,00,00,06
    dd 00,06,00,00,00,00,00,06,00,07,00,00,00,00,00,07,00,07,00,00,00,00,09,00,00,00,07,00,09
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    dd 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00


drawBackground: 
    call video
    
    mov si, background
    mov cx, 32		     
    filab: 
    mov bx,32		     
    siguienteb: 
        mov al,[si]		   
	    cmp al, 00		    
	    je dfondo
        
        next:
            inc edi
	        inc si
	        dec bx
	        cmp bx,0
	        jne siguienteb  
	        loop filab

    dfondo:
        mov[fil], 1
        mov[col], 1
        call drawRedball

        jmp next

    fin:
ret