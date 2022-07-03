clear:
    mov ax, 4F02h ; establece el modo svga
    mov bx, 105h  ; mode de video 1024x768 con 256 colores
    int 10h  
     
    ret