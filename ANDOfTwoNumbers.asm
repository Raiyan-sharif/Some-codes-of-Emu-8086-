.model small
.stack 100h
.data
data1 db '$'



.code

    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov data1,al
        
        mov ah,1
        int 21h
        mov bl,al
        AND bl,data1
        
       
        
        main endp
end main