org 100h

    mov si, string
    mov di, string + 6
    mov cl,7

check_palindrome:
    lodsb
    mov bl,[di]
    cmp al,bl
    jne not_palindrome
    dec di
    loop check_palindrome

palindrome:
    ret

not_palindrome:
    mov si, string + 6
    mov cl, 7

reversing:
    std
    lodsb
    cld
    stosb 
    loop reversing
    
ret


string: db "racecar"        ; if the string is a palindrome then progarm will exit,
reverse: db 0               ; if not then it will reverse the string which can be seen in memory