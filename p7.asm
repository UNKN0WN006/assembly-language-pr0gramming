.MODEL SMALL
.STACK 100H

.DATA
  ; No specific data defined here, as we're working directly with memory

.CODE
START:
    MOV AX, @DATA  ; Initialize DS register
    MOV DS, AX

    ; Initialize registers
    MOV SI, 0040H  ; SI points to the first BCD number at DS:0040H
    MOV DI, 0050H  ; DI points to the second BCD number at DS:0050H
    MOV BX, 0060H  ; BX points to the result destination at DS:0060H

    MOV AL, [DI]   ; Load the BCD number at DS:0050H into AL
    SUB AL, [SI]   ; Subtract the BCD number at DS:0040H from AL
    DAS            ; Adjust AL after subtraction (for BCD)
    MOV [BX], AL   ; Store the result at DS:0060H

    MOV AL, [DI+1] ; Load the next byte (if there's a carry) from DS:0051H
    SBB AL, [SI+1] ; Subtract with borrow from the carry
    DAS            ; Adjust AL after subtraction (for BCD)
    MOV [BX+1], AL ; Store the result at DS:0061H

    ; Terminate the program
    MOV AX, 4C00H
    INT 21H

END START
