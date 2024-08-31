.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    ; Load the source offset (0030H) into SI
    MOV SI, 0030H
    
    ; Load the destination offset (0040H) into DI
    MOV DI, 0040H
    
    ; Set the counter for 8 bytes
    MOV CX, 8

    ; Copy the block of data
    REP MOVSB
    
    ; Exit program
    MOV AX, 4C00H
    INT 21H
MAIN ENDP

END MAIN
