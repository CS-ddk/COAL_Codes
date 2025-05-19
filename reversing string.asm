org 0x100

start:
    mov si, offset string          
    mov di, offset destination     
    xor cx, cx                    

copy_loop:
    lodsb                         
    cmp al, 0                     
    je reverse_start
    stosb                         
    inc cx                        
    jmp copy_loop

reverse_start:
    mov si, di                    ; si = after last copied char in destination
    dec si                        ; si points to last char
    mov di, offset destination    ; di = start of destination buffer
    mov bx, cx                    

reverse_loop:
    cmp bx, 1
    jle done                    
    mov al, [di]                 
    mov dl, [si]                 
    mov [di], dl                 
    mov [si], al                
    inc di                      
    dec si                      
    sub bx, 2                  
    jmp reverse_loop

done:
    mov ax, 0x4C00
    int 0x21

string db 'Hello world', 0              ; Reversed String can be viewed in memory by using address at front of DI 
destination db 5 dup(0)
