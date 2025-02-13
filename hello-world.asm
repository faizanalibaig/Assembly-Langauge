code:
.model small   ;define the memory model
.stack 100h    ; define the stack size

.data
msg db "Hello, world!$", 0Ah   ;message to display (0Ah for newline)

.code
mov ax, @data  ;initialize data segment
mov ds, ax

start:
 
 mov ah, 09h
 lea dx, msg
 int 21h 
 
 mov ah, 4Ch
 int 21h
 
 
end start      
