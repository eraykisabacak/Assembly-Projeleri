NAME1 DB 'teknoloji'
NAME2 DB 'peknoloji'
NAME3 DB 'ESIT'
NAME4 DB 'ESIT DEGIL'

MOV CX,10
LEA SI,NAME1
LEA DI,NAME2


REPE CMPSB ; EGit oldu�u m�ddet�e karG�laGt�r.
JNE ESITDEGIL
MOV CL,'E'
MOV BH,01
JMP SON

ESITDEGIL:
MOV BH,0 
MOV CL,'H'
LEA DI,name3


SON:
MOV AH,4CH
INT 21H
           
           