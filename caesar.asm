;Caesar Encryption       
.MODEL SMALL
.DATA
MS1 DB 'ENTER FIVE letter : $'
MS2 DB 10,13,'ENCRYPTED TEXT : $'
A1 DB 5 DUP (00)      
A2 DB 5 DUP (00),'$'  
.CODE
start:

 CAESER MACRO AL
    CMP AL,'z'   
    JA exit                          
    CMP AL,'A'   
    JB exit
    CMP AL,'Z'   
    JE decrease
    CMP AL,'z' 
    JE decrease
    CMP AL,'Y'   
    JE decrease
    CMP AL,'y'   
    JE decrease
    CMP AL,'X'   
    JE decrease
    CMP AL,'x'   
    JE decrease
    
    add al,4
    JMP exit
    ;-----------------------
    ;subtract from 26 letter for retrace or return to the first char
    ;-----------------------
    decrease:    
    SUB AL,22
    JMP exit
    ;-----------------------
    exit:
 endm
;--------------------------------------------------
    
     MOV dX,@data
     MOV Dx,AX     
     
     LEA SI,A1     
     LEA DI,A2
                    
                   
                   
                   
     ;enter 5 letters on the screen print
     LEA DX,MS1
     MOV AH,09
     INT 21H
     
     MOV CX,00005    
     
     INPUT:
     MOV AH,01
     INT 21H
     MOV [SI],AL  
     INC SI
     LOOP INPUT
     
     ;--------------------------------------
     MOV DX,0000
     MOV CX,0005     
     LEA SI,A1 
     
     ;PRINT ENCRYPTED TXT (A2) TO SCREEN  
    
     
     OUTPUT:
     MOV AL,[SI]
     CAESER AL
     MOV [DI],AL
     INC SI
     INC DI
     LOOP OUTPUT                                 
     
     
     ;print to screen 2 content(encrypted text) 
   
     LEA DX,MS2
     MOV AH,09
     INT 21H
     LEA DX,A2
     MOV AH,09
     INT 21H
     
     
     
     ;EXIT
     MOV AH,4CH
     INT 21H
end start
start:
 ;entry point
 end start 
     
     
     
     end