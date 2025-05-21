;1 1 2 3 6 7 14 15 30 31 62 63

org 100h

xor ax,ax
xor bx,bx


mov ax,1
mov bx,2
add ax,bx

jmp mult:

addi:
add ax,1 

mult:
mul bx
jmp addi                  


ret
