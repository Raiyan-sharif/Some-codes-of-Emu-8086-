.model small
.stack 100h
.data
mask db 011111111b


.code

    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov bl,al
        
        
        and bl,mask
        
  
        
        main endp
end main