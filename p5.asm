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
    MOV DI, 0050H  ; DI points to the destination at DS:0050H
    XOR DX, DX     ; Clear DX for carry storage
    XOR AX, AX     ; Clear AX for sum storage

    MOV CX, 5      ; Set loop counter for 5 numbers

ADD_LOOP:
    ADD AX, [SI]   ; Add the lower 16 bits
    ADC DX, [SI+2] ; Add the upper 16 bits with carry
    ADD SI, 4      ; Move to the next 16-bit number
    LOOP ADD_LOOP  ; Loop until all 5 numbers are added

    ; Store the result
    MOV [DI], AX   ; Store the lower 16 bits at DS:0050H
    MOV [DI+2], DX ; Store the upper 16 bits at DS:0052H

    ; Terminate the program
    MOV AX, 4C00H
    INT 21H

END START
