include "emu8086.inc"

.model small
.stack 100h

.data      
 

.code

main proc
    mov ah, 01h         
    int 021h
    mov cl, al             
    sub al, 30h          
    
    mov bl,1           
    mul bl
    
   ; mov ah, 02h
   ; mov dl, 0dh         
   ; int 021h
   ; mov dl, 0ah          
   ; int 021h                
    
    add al, 30h          
    mov ah, 02h          
    mov dl, al           
    int 021h   
    
    
    ;multiple by 2
    mov al, cl
    sub al, 30h
    mov bl,2           
    mul bl
    
    add al, 30h          
    mov ah, 02h          
    mov dl, al           
    int 021h  
    
    ;multiple by 3
    mov al, cl
    sub al, 30h
    mov bl,3           
    mul bl
    
    add al, 30h          
    mov ah, 02h          
    mov dl, al           
    int 021h  
    
    ;multiple by 4
    mov al, cl
    sub al, 30h
    mov bl,4           
    mul bl
    
    add al, 30h          
    mov ah, 02h          
    mov dl, al           
    int 021h
    
    ;multiple by 5
    mov al, cl
    sub al, 30h 
    mov bl,5           
    mul bl
    
    mov bh, ah
    div al
    add al, 48              
    mov ah, 02h          
    mov dl, al           
    int 021h
   
    
   
    add bh, 48              
    mov ah, 02h          
    mov dl, bh           
    int 021h    
    
main endp
end main
