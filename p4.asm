.MODEL SMALL
.STACK 100H

.DATA
    ; No specific data defined here, as we're working directly with memory

.CODE
START:
    MOV AX, @DATA  ; Initialize DS register
    MOV DS, AX

    ; Initialize registers
    MOV SI, 0030H  ; SI points to the first number at DS:0030H
    MOV CX, 7      ; Loop counter for 7 numbers
    XOR AX, AX     ; Clear AX (AX will store the sum)
    XOR DX, DX     ; Clear DX (DX will be used for carrying)

ADD_LOOP:
    MOV AL, [SI]   ; Load the byte at DS:[SI] into AL
    ADD AX, AX     ; Add AL to AX (including carry)
    INC SI         ; Move to the next number in memory
    DEC CX         ; Decrement loop counter
    JNZ ADD_LOOP   ; If CX is not zero, repeat the loop

    ; Store the result
    MOV [0050H], AL ; Store the lower 8 bits of the sum in DS:0050H
    MOV [0051H], AH ; Store the higher 8 bits of the sum (carry) in DS:0051H

    ; Terminate the program
    MOV AX, 4C00H  ; Terminate the program
    INT 21H

END START
