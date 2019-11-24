ORG 100H

MOV BX,0
MOV CX,5

k1:
    inc BX
    PUSH CX
    MOV CX,5
k2:
    INC BX
    PUSH CX
    MOV CX,5
k3:
    ADD BX,1
    
    LOOP k3
    pop CX
    
    LOOP k2
    pop CX
    
    LOOP k1
    ret