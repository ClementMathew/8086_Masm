.model small

.data
        num1 dw 01 dup(?)
        num2 dw 01 dup(?)
        sum dw 01 dup(?)

.code
        main proc
        mov ax,@data
        mov ds,ax

        mov num1,ax
        mov num2,ax
        mov ax,num1
        add ax,num2

        mov sum,ax

        add ax,48
        mov dx,ax
        mov ah,2h
        int 21h

        mov ah,4ch
        int 21h

        ;mov sum,ax

 main endp
 end main
