.MODEL SMALL
.STACK 100H

.DATA
  ; No specific data defined here, as we're working directly with memory

.CODE
START:
    MOV AX, @DATA  ; Initialize DS register
    MOV DS, AX

    ; Initialize registers
    MOV SI, 0030H  ; SI points to the first BCD number at DS:0030H
    MOV DI, 0040H  ; DI points to the destination at DS:0040H
    XOR AL, AL     ; Clear AL for sum storage
    XOR AH, AH     ; Clear AH for carry storage

    MOV CX, 5      ; Set loop counter for 5 BCD numbers

ADD_LOOP:
    MOV BL, [SI]   ; Load BCD number into BL
    ADD AL, BL     ; Add BCD number to AL
    DAA            ; Adjust AL after addition (for BCD)
    MOV BL, 00H    ; Clear BL
    ADC AH, BL     ; Add the carry to AH
    INC SI         ; Move to the next BCD number
    LOOP ADD_LOOP  ; Loop until all 5 numbers are added

    ; Store the result
    MOV [DI], AL   ; Store the lower byte (result) at DS:0040H
    MOV [DI+1], AH ; Store the upper byte (carry) at DS:0041H

    ; Terminate the program
    MOV AX, 4C00H
    INT 21H

END START
