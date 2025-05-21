org 100h

    mov cx, 5     ; Number to calculate factorial (change 5 as needed)
    mov ax, 1      

factorial:
    mul cx     
    loop factorial  

done:
    ret