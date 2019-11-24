ORG 100H

MOV AL,25
MOV BL,10
CMP AL,BL
JNE esitdegil
JMP esit
         
esitdegil:
    MOV CL,'H'
    JMP dur
    
    
esit:
    MOV CL,'E'
    
dur:
ret
end