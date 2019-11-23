.MODEL SMALL
.STACK
.DATA 
BUFFER DB "BILGISAYAR MUHENDISLIGI"
MESAJ DB ?
.CODE
ANA PROC
    
    TEKRAR:
    MOV AH,01H  ; 21 nolu interruptin 01 nolu fonksiyonu klavyeden okur
    INT 21H ; Okunan karakterin ASCII karsiligi AL kaydedicisindedir
    
    CMP AL,30H
    JNZ TEKRAR
    
    MOV AH,4CH
    INT 21H
ANA ENDP
END ANA