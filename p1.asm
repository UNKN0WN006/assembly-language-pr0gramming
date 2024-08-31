.model small
.code
main proc
    mov ax, 3000H
    mov ds,ax
    mov cl, 00h
    mov si , 0030h
    mov ax, [si]
    mov si, 0040h
    mov bx, [si]
    add bx,ax
    adc cl, cl
    mov si, 0050h
    mov [si] , bx
    add si, 02h

    mov [si], cl
    int 03h
    mov ah, 4ch
    int 21h
main endp
end
