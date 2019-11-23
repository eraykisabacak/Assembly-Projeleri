org 100h
mov ax,10h
mov cx,65h  

dis1:
cmp ax,1000h
ja bitti

add ax,1234
loop dis1

bitti:
ret