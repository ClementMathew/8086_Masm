.model small
.stack 100h

.data   
    string db 'hello'

.code
    main proc
        mov ax, @data
        mov ds,ax
        mov si, offset string
        mov cx, 5

        loop1:
            mov bx,[si]
            push bx
            inc si
            loop loop1

        mov cx,5

        loop2:
            pop dx
            mov ah,02h
            int 21h
            loop loop2

        MOV  AH,4CH
        INT  21H
    main endp

end main