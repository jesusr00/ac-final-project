format binary as 'img'
org 7c00h
    mov ax, cs
    mov ds, ax
    ; mov ax, 4F02h ; establece el modo svga
    ; mov bx, 105h  ; mode de video 1024x768 con 256 colores
    ; int 10h       ; lanza la interrupcion

    ; mov ah, 03h   ; lee la pagina acutal del video
    ; mov bh, 01h   ; lee la pagina 1 del video
    ; int 10h

    ; mov ah, 02h   ; asignar la posicion del cursor
    ; int 10h       ; lanza la interrupcion


    ; mov ax, 0a000h; direccion de la memoria de video
    ; mov es, ax


    ; xor ax, ax
    ; mov bl, 200
    ; mov bh, 5

    ; xor dx, dx
    ; xor di, di
    ; mov cx, 25
    ; mov bx, 25

    ; @@:
    ;   push 50
    ;   loop @b

    ; cuadro: 
    ;   mov cx, 25
    ;   mov ax, 0404h
    ;   @@:
    ;     mov [es:di], al
    ;     add di, 1
    ;     loop @b

    ;   mov ax, 25
    ;   sub ax, bx
    ;   mov dx, ax
    ;   mov ax, 1024
    ;   mul dx
    ;   mov di, ax 
    ;   cmp bx, 0
    ;   je $
    ;   dec bx
    ;   jmp cuadro

  inicio:
  CALL leertecla              ;Llamamos a la funcion de leer una tecla
  MOV AH,0Eh                  ;Funcion teletype
  INT 10h                     ;Mostramos la tecla en pantalla
  JMP inicio   

  jmp $

    CALL leertecla              ;Llamamos a la funcion de leer una tecla
    MOV AH,0Eh                  ;Funcion teletype
    INT 10h                     ;Mostramos la tecla en pantalla
    JMP inicio                  ;Hacemos un bucle eterno
 
  leertecla:
    XOR AX,AX                   ;Funcion 0
    INT 16h   
    CMP AH,27h                  ;¿El scancode corresponde con el scancode de la tecla "ñ"?
    JE  cambiarletra            ;Sí, así que cambiamos el contenido de AL
    RET     

  cambiarletra:
    MOV AL,0A4h                 ;Ponemos la letra "ñ" en AL
    RET       


times 510-($-$$) db 0
dw 0xaa55


; org 8000h

;     include '../main/main.asm'
;     include '../graph/video_mode.asm'

;     jmp main

; times (10*512)-($-$$) db 0
; times 512 db 0
