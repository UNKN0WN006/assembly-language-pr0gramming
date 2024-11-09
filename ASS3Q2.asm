.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax
mov si, 0030h
mov ax,[si]
mov cl,06h
l4:inc si
inc si
        cmp ax,[si]
        jnc l1
        mov ax,[si]
        l1:
        loop l4
mov si,0040h
mov [si],ax
int 03h
mov ah,4ch
int 21h
main endp
end main
