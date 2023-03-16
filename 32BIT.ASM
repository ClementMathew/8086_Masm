data segment
list dd 92122424h,92122424h
n3 dw ?
n4 dw ?
data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax

        xor ax,ax
        mov cl,al
	  mov si,offset list
        mov ax,[si]
        add ax,[si+4]
        mov bx,ax
        mov n3,bx
        mov ax,[si+2]
        add ax,[si+6]
        mov dx,ax
        mov n4,dx
        jnc move
	   inc cl
 move:
        mov ax,4ch
        int 21h
code ends
end start
