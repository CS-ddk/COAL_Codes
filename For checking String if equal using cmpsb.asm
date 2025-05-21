org 100h   

    mov si, offset str1
    mov di, offset str2
    mov cx, 4
    cld
    repe cmpsb  
    jne not_equal
    
equal:
    mov ah,09h
    mov dx, offset equal_msg   
    int 21h  
    jmp exit
    

not_equal: 
    mov ah,09h
    mov dx, offset notequal_msg
    int 21h     
    jmp exit


exit:
ret  

str1: db 'ABCD$'
str2: db 'ABCD$' 

equal_msg db 'equal$'
notequal_msg db 'not equal$'