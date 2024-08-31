.MODEL SMALL

.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CL, 00H
    ; STORING  0030H
    MOV SI , 0030H
    MOV AL, [SI]
    ;STORING 0040H
    MOV SI, 0040H
    MOV BL, [SI]
    ;MAKING 2'S COMPLIMENT OF AL
    ;NEG AL
    NOT AL
    INC AL
    ;ADDITION
    ADD AL, BL

    JC L1
    ;answer is -ve and res is 2's comp of al 
    NOT AL
    INC AL
    L1:
      CMC; TO COMPLIMENT THE CARRY
      ADC CL, CL
      MOV SI, 0050H
      MOV [SI],AL
      MOV SI, 0051H
      MOV [SI], CL
    INT 3H
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END
