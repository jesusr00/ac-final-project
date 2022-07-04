main: 
    xor ax, ax
    mov es, ax
    mov ax,timer
    mov [es:4*8], ax
    mov [es:4*8+2], cs
 

    mov [fil], 10; fila
    mov [col], 107; columna

    ciclo:
        mov [cont], 0
        add [fil], 2
        call clear
        call frame
        call drawRedball
        @@:
            cmp [cont],1
            jne @b
            cmp [fil], 700
            je $
            jmp ciclo


jmp $

    cont dd 1
    fil dd 1
    col dd 1
    
    arrf dd 1
    arrc dd 1

    dhf dd 1
    dhc dd 1

    onef dd 1
    onec dd 1

    thref dd 1
    threc dd 1

    tenf dd 1
    tenc dd 1

    fivef dd 1
    fivec dd 1

    sevenf dd 1
    sevenc dd 1

    alf dd 1 
    alc dd 1