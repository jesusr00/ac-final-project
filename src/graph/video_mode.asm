video_mode: 
    mov ax, 12h
    int 10h
    mov ax, 0a000h
    mov es, ax
    ret