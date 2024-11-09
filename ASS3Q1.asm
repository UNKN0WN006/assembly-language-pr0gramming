.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax
mov si, 0030h
mov al,[si]
mov cl,06h
l4:inc si
        cmp al,[si]
        jc l1
        mov al,[si]
        l1:
        loop l4
mov si,0040h
mov [si],al
int 03h
mov ah,4ch
int 21h
main endp
end main
