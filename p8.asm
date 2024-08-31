.MODEL SMALL
.STACK 100H

.DATA
  ; No specific data defined here, as we're working directly with memory

.CODE
START:
    MOV AX, @DATA  ; Initialize DS register
    MOV DS, AX

    ; Load the 8-bit numbers
    MOV AL, [0040H]  ; Load the first 8-bit number from DS:0040H into AL
    MOV BL, [0050H]  ; Load the second 8-bit number from DS:0050H into BL

    ; Multiply the numbers
    MUL BL           ; AL = AL * BL, result in AX

    ; Store the result
    MOV [0060H], AX  ; Store the lower byte (product) in DS:0060H

    ; Terminate the program
    MOV AX, 4C00H
    INT 21H

END START
