MESAJ DB ?

.CODE

ANA PROC
TEKRAR:
 
MOV AH,01h
INT 21H

MOV MESAJ[SI],AL
INC SI
CMP AL,30H
JNZ TEKRAR

DEC SI
MOV MESAJ[SI],24H
MOV DX,OFFSET MESAJ
MOV AH,09H
INT 21H

MOV AH,4CH
INT 21H

ANA ENDP
END ANA

        