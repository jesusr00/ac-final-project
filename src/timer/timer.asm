timer:
	cli
	inc    [cont]
	mov    al,20h
	out    20h,al
	sti
    
    iret