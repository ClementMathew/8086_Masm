.model small
.stack 100h
.data
    string db "Clement$"

.code
main proc

    mov ax,@data
    mov ds,ax

    call reverse

    lea dx,string

    mov ah,09h
    int 21h

    mov ah,4ch
    int 21h
main endp

reverse proc
    mov si,offset string 
    mov cx,0h

    loop1:
        mov ax,[si]
        cmp al,'$'
        je label1

        push [si]

        inc si
        inc cx
    
    jmp loop1

    label1:
        mov si,offset string
        
        loop2:
            cmp cx,0
            je exit

            pop dx
            xor dh,dh
            mov [si],dx
            
            dec cx
            inc si
        jmp loop2

    exit:
        mov [si],'$ '
    ret
reverse endp
end main