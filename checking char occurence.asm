org 100h   


start:
    mov ah,09h
    mov dx, offset msg
    int 21h
 
input:
    mov ah,01h
    int 21h 
    mov bl,al 

    mov ah,09h
    mov dx, offset newline
    int 21h 

    mov al,bl
    mov di, offset string
    mov cx, 5
    cld
    repne scasb  
    jne not_found

found:  
 
    mov ah,09h
    mov dx, offset found_msg
    int 21h 
    jmp exit

not_found:
        mov ah,09h
        mov dx, offset false
        int 21h

exit:
ret  
     
string: db 'hello$'
msg: db 'Enter character: $' 
found_msg:      db 'Found  $'  
false: db 'Not found$'
newline: db 13,10,'$'