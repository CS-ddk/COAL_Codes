org 0x0100
mov si,string
mov di,destination
mov cx,0

word:
	lodsb
	cmp al,0
	je done  
	
check:
    cmp al,'A'
    jb skip           ; when above the ascii of a
    cmp al,'Z'
    ja skip           ; when below the ascii of z
    add al,32    
    
skip:
	stosb  
	inc cx
	jmp word

done:
	mov ax,0x04c00
	int 21h

string: db "HELLO World",0                   ; can be seen in memory by using its address
destination: db 0