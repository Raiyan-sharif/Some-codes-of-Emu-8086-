.model small
.stack 100h
.data
complementBit db 10000000b


.code

    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov bl,al
        
        
        xor bl,complementBit
        
       
        
        main endp
end main