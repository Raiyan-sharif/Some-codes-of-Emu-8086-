.MODEL small
.stack 100h
.data
 
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    sub bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main