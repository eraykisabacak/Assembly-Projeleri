org 100h

mov ax,1111h
shl ax,1  ; x2
mov bx,ax ; 2 ile carpilmis
shl ax,1  ; x4
shl ax,1  ; x8
add ax,bx ; x8 + x2 = x10

ret