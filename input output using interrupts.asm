org 100h

start:

    mov ah, 09h
    mov dx, offset msgName
    int 21h

    mov si, 0
readName:
    mov ah, 01h
    int 21h
    cmp al, 13         
    je doneName
    mov nameBuffer[si], al
    inc si
    cmp si, 19
    jb readName
doneName:
    mov nameBuffer[si], '$'

    mov dx, offset newline
    mov ah, 09h
    int 21h

    mov dx, offset msgHello
    mov ah, 09h
    int 21h

    ; Displays actual name
    mov dx, offset nameBuffer
    mov ah, 09h
    int 21h


ret    

msgName:     db 'Enter student name: $' 
msgHello:    db 13,10, 'Student Name: $'  
newline     db 13,10, '$' 
nameBuffer  db 20 dup('$')
