.model small
.stack 100h
.data
.code
main proc
        mov ax,@data
        mov ds,ax

        mov si,0030h
	mov al,[si]
	mov bx,0100h
xlat
	mov si,0050h
	mov [si],al

int 03h
mov ah,4ch
int 21h
main endp
end main

