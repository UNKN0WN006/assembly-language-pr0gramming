.model small
.stack 100h
.data
.code
main proc
        mov ax,@data
        mov ds,ax
        mov bl,06h
        l2:mov cl,bl
        mov si,0030h
        l1:mov al,[si]
        cmp al,[si+1]
jc skip
        mov dl,[si+1]
	mov [si+1],al
	mov [si],dl
skip:
	inc si
	dec cl
	jnz l1
	dec bl
	jnz l2
int 03h
mov ah,04ch
int 21h
main endp
end main
