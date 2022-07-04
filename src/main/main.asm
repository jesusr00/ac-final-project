main: 
    xor ax, ax
    mov es, ax
    mov ax,timer
    mov [es:4*8], ax
    mov [es:4*8+2], cs

    ; call drawRedball
    call darkhole

    mov [fil], 10; fila
    mov [col], 100; columna

    ; ciclo:
    ;     mov [cont], 0
    ;     add [fil], 2
    ;     call clear
    ;     call frame
    ;     call drawRedball
    ;     @@:
    ;         cmp [cont],1
    ;         jne @b
    ;         cmp [fil], 700
    ;         je $
    ;         jmp ciclo


jmp $

    cont dd 1
    fil dd 1
    col dd 1
    arrf dd 1
    arrc dd 1