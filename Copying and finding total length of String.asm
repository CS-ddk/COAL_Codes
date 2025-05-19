org 100h               


mov si, offset source_string  
mov di, offset destination    
mov cx, 0                    


copy_string:                    ;for copying string into destination
    mov al, [si]             
    mov [di], al             
    inc si                   
    inc di                   
    cmp al, '$'              
    jne copy_string          


mov si, offset destination  
mov cx, 0                   

find_length:                 ; finds or keep the trace of the total character in string
    mov al, [si]             
    cmp al, '$'              
    je done                  
    inc cx                   
    inc si                   
    jmp find_length          

done:
   

ret                          


source_string db 'Hello, World!$', 0 ; Changing this string will bring new value into cx     
destination db  dup(0)               

