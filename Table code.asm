org 100h

    mov al,0
    mov bl,0

table:
    add bl,1
    add al,2          ; change value for table, answer will be stored at in Al
    
    cmp bl,10
    jz exit
    jmp table

exit:
    ret
