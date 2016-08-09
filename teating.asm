.model small
.stack 100h
.data 
m1 dw 10,13,'the number is even $' 
m2 dw 10,13,'the number is odd $'

.code


    main proc 
       mov ax,@data
       mov ds,ax
       
      
        mov ah,1
        int 21h
        mov bl,al
        
        test bl,01h
        
        jz even
        jnz odd
       
        ;jmp start
        
        even:
        lea dx,m1
        mov ah,9
        int 21h
        jmp endd
        
        odd:
        lea dx,m2
        mov ah,9
        int 21h
        
        
         endd:
         mov ah,4ch
         int 21h
       
        
        main endp
end main