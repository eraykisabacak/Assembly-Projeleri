mov ah,2
mov CX,FFH
inc dl
int 21
loop 105
int 20