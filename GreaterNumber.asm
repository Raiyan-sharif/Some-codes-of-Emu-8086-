.MODEL SMALL
.STACK 100H
.DATA
   
.CODE
     
    
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV CL,AL
    
    INT 21H
    MOV BH,AL
    
    MOV DL,13
    MOV AH,2
    INT 21H
    
    MOV DL,10
    MOV AH,2
    INT 21H
    
    CMP BL,CL
    JG _BLGREATER
    JL _CLGREATER
    
    
    _BLGREATER:
    
    CMP BL,BH
    JG _BLGREATEST
    JL _BHGREATEST
    
    _BLGREATEST:
    
    MOV AH,2
    MOV DL,BL
    INT 21H  
    JMP _BLGPRINTED
    
    _BHGREATEST:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP _BHGPRINTED    
    
    
    _BLGPRINTED:
    
    CMP CL,BH
    JG _CLG
    JL _BHG
    
    _CLG:
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BH
    INT 21H
    
    JMP EXIT
    
    _BHG:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    
    _BHGPRINTED:
    
    CMP BL,CL
    JG _BLG1
    JL _CLG1
    
    _BLG1:
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    _CLG1:
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BL
    INT 21H
    
    JMP EXIT
    
    
    
    _CLGREATER:
    
    CMP CL,BH
    JG _CLGREATEST2
    JL _BHGREATEST2
    
    _CLGREATEST2:
    
    MOV AH,2
    MOV DL,CL
    INT 21H  
    JMP _CLGP
    
    _BHGREATEST2:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP _BHGP    
    
    
    _CLGP:
    
    CMP BL,BH
    JG _BLG2
    JL _BHG2
    
    _BLG2:
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
    
    JMP EXIT
    
    _BHG2:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    
    JMP EXIT
    
    
    _BHGP:
    
    CMP BL,CL
    JG _BLG3
    JL _CLG3
    
    _BLG3:
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    _CLG3:
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BL
    INT 21H
    
    JMP EXIT     
    
    
    EXIT:
    
    MAIN ENDP
END MAIN