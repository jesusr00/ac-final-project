main: 
    xor ax, ax
    mov es, ax
   
    mov ax,timer
    mov [es:4*8], ax
    mov [es:4*8+2], cs	

    mov ax,keyboard
    mov [es:4*9], ax
    mov [es:4*9+2], cs
    sti

    mov [fil], 10; fila
    mov [col], 10; columna

    call drawRedball

jmp $

    cont dd 1
    fil dd 1
    col dd 1

    LEFT	equ 1eh
	DOWN	equ 1fh
	RIGHT	equ 20h
	UP		equ 11h
    ENTER   equ 29h
    SPEED   equ 5


    start:
        ciclo:
            mov [cont], 0
            add [fil], 10
            call clear
            call frame
            call drawRedball
            @@:
                cmp [cont],18
                jae @b
                cmp [fil], 700
                je $
                jmp ciclo

        ret