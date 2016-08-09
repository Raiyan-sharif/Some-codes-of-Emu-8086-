.model small
.stack 100h
.data

.code

    main proc
       
        
        mov ah,1
        int 21h
        mov bl,al
        NOT bl
        
        
       
        
        main endp
end main