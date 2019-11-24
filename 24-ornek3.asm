ORG 100h

mov ax,5
mov bx,2
jmp hesapla

geri:
    JMP dur
    
hesapla:
    add ax,bx
    jmp geri
    
dur:
ret
end