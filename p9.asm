.MODEL SMALL
.STACK 100H

.DATA
  ; No specific data defined here, as we're working directly with memory

.CODE
START:
    MOV AX, @DATA  ; Initialize DS register
    MOV DS, AX

    ; Load the 16-bit numbers
    MOV AX, [0040H]  ; Load the first 16-bit number from DS:0040H into AX
    MOV BX, [0050H]  ; Load the second 16-bit number from DS:0050H into BX

    ; Multiply the numbers
    MUL BX           ; DX:AX = AX * BX, 32-bit result in DX:AX

    ; Store the result
    MOV [0060H], AX  ; Store the lower 16 bits of the result in DS:0060H
    MOV [0062H], DX  ; Store the upper 16 bits of the result in DS:0062H
