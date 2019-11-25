data segment
    string1 db "asd$"
    string2 db "asd$"
    e_uyari db "iki string esit$"
    ed_uyari db "esit degil$"
ends

stack segment
    dw 128 dup<0>
ends

code segment
    start:
    mov ax,data
    mov ds,ax
    mov es,ax
    
    lea si,string1
    lea di,string2
    mov cx,3
    repe cmpsb
    je esit
    
    mov ah,9
    lea dx,ed_uyari
    int 21h
    jmp son
    
    esit:
    mov ah,9
    lea dx,e_uyari
    int 21h
    
    son:
    mov ax,4c00h
    int 21h
ends
end start