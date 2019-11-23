data segment
    isim db 'Eray'
ends


stack segment
    dw 128 dup(0)
ends


code segment
    start:
    mov ax,data
    mov ds,ax
    
    
    lea SI,isim
      
    mov cx,4  
      
    ilerle:
    cmp [SI],96
    ja buyukyap
    jmp atla
          
    buyukyap:
    sub [SI],32      
          
    atla:
    inc SI
    loop ilerle
      
    
    mov ax,4c00h
    int 21
ends
end start