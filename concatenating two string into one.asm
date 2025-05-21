org 100h

start:
    
    mov si, offset str1
    mov di, offset buffer

copyStr1:
    mov al, [si]
    mov [di], al
    inc si
    inc di
    cmp al, '$'
    jne copyStr1

    ; Remove the last '$' to allow appending
    dec di

    ; Copy str2 to buffer after str1
    mov si, offset str2

copyStr2:
    mov al, [si]
    mov [di], al
    inc si
    inc di
    cmp al, '$'
    jne copyStr2

    mov dx, offset newline
    mov ah, 09h
    int 21h

    mov dx, offset buffer
    mov ah, 09h
    int 21h

    ret

str1    db 'Hello, ', '$'
str2    db 'world!', '$'
newline db 13,10, '$'
buffer  db 40 dup('$')
