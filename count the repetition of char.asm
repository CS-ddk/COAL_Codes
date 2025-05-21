org 0x0100

mov si, string         
mov di, counter        
mov cx, 0              

next_char:
    lodsb              
    cmp al, 0          
    je result

    cmp al, 'l'        ; Replace the char "l" to count another char
    jne skip           

    inc cx             

skip:
    jmp next_char

result:
    mov al, cl         
    stosb
                  
    ret

string:  db "Hello World", 0
counter: db 0                     
