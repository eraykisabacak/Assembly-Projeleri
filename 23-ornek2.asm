.MODEL SMALL
.STACK 64
.DATA
    SONUC DW ?
.CODE
ANA PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    MOV AX,5
BAS:
    ADD BX,AX
    INC AX
    CMP AX,100
    JBE BAS
    MOV SONUC,BX
    MOV AH,4CH
    INT 21H
ANA ENDP
END ANA
  