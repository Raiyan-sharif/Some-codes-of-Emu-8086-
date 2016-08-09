.MODEL SMALL
.STACK 100H
.DATA

M1 DB 0DH,0AH,'ENTER FIRST SUBJECT GRADE : $'
M2 DB 0DH,0AH,'ENTER SECOND SUBJECT GRADE : $'
M3 DB 0DH,0AH,'ENTER THIRD SUBJECT GRADE : $'
M4 DB 0DH,0AH,'ENTER FOURTH SUBJECT GRADE : $'
M5 DB 0DH,0AH,'YOUR CGPA IS : $'
SB1 DB ?
SB2 DB ?
SB3 DB ?
SB4 DB ?
CGPA DB 0
CNT DB 0
UI DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

   
FRSTINPT:
    
    LEA DX,M1
    MOV AH,9
    INT 21H             
    
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    JE SETF1
    CMP AL,'B'
    JE SETF2    
    CMP AL,'C'
    JE SETF3
    CMP AL,'D'
    JE SETF4
    JMP ERR
    
SETF1:
    MOV SB1,4
    JMP SCNDINPT     
SETF2:
    MOV SB1,3
    JMP SCNDINPT
SETF3:
    MOV SB1,2
    JMP SCNDINPT
  
SETF4:
    MOV SB1,1 
    
    
SCNDINPT:
    
    LEA DX,M2
    MOV AH,9         
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    JE SETS1
    CMP AL,'B'
    JE SETS2
    CMP AL,'C'      
    JE SETS3
    CMP AL,'D'
    JE SETS4
    JMP ERR
    
SETS1:
    MOV SB2,4
    JMP THIRDINPT   
SETS2:
    MOV SB2,3
    JMP THIRDINPT
SETS3:
    MOV SB2,2
    JMP THIRDINPT
  
SETS4:
    MOV SB2,1 
        
 THIRDINPT:
    
    LEA DX,M3
    MOV AH,9
    INT 21H
                  
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    JE SETT1
    CMP AL,'B'
    JE SETT2
    CMP AL,'C'
    JE SETT3
    CMP AL,'D'
    JE SETT4
    JMP ERR
    
SETT1:
    MOV SB3,4
    JMP FINPT
SETT2:
    MOV SB3,3     
    JMP FINPT
SETT3:
    MOV SB3,2
    JMP FINPT
  
SETT4:
    MOV SB3,1
FINPT:
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    JE SETFR1
    CMP AL,'B'  
    JE SETFR2
    CMP AL,'C'
    JE SETFR3
    CMP AL,'D'
    JE SETFR4
    JMP ERR
    
SETFR1:
    MOV SB4,4 
    JMP CALCULATE
SETFR2:
    MOV SB4,3
    JMP CALCULATE
SETFR3:             
    MOV SB4,2
    JMP CALCULATE
  
SETFR4:
    MOV SB4,1 

CALCULATE:
    MOV BL,SB1
    ADD BL,SB2
    ADD BL,SB3      
    ADD BL,SB4
TOP:
    CMP BL,4     
    JGE INCE     
    JMP PRINT
INCE:
    INC CGPA
    SUB BL,4     
    JMP TOP
PRINT:
    MOV AH,9
    LEA DX,M5
    INT 21H
    MOV AH,2     
    MOV DL,CGPA
    ADD DL,48
    INT 21H
ERR:
    MOV AH,4CH
    INT 21H     
    main endp
end main