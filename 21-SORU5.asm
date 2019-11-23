    .DATA
    YAZI DB 'teknoloji fakultesi$'
    .CODE
ANA PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,0
    MOV CX,20
    LEA SI,YAZI
    
BAS:
    MOV AL,[SI]
    CMP AL,111
    JZ GIT
DON:
    INC SI
    LOOP BAS
    JMP SON
GIT:
    SUB AL,69
    MOV [SI],AL
    JMP DON
SON:   
MOV AH,4CH
    INT 21H
ANA ENDP
END ANA