.model small
.stack 100h
.data 
m1 dw 10,13,'Its not the correct number$'
m2 dw 10,13,'Its the correct number$'
d db '$'
.code


    main proc 
       
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov bl,al
        
        test bl,05h
        mov cl,05h
        not cl
        cmp bl,cl
        
        jnz print1
        je print
        
        print1:
        lea dx,m1
        mov ah,9
        int 21h
        jmp exit
        
        print:
        lea dx,m2
        mov ah,9
        int 21h
        jmp exit
        
        exit:
        mov ah,4ch
        int 21h
       
        
       
       
        
        main endp
end main