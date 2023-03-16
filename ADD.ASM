;Assembly program to add two numbers

data segment
	a db 4
	b db 5
data ends

code segment
assume cs:code, ds:data

start:
	mov ax,data
	mov ds,ax
	mov bl,a
	mov dl,b
	add dl,bl
	add dl,48
	mov ah,2
	int 21h

	mov ah,4ch
	int 21h
code ends
end start