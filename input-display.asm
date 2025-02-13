.model small                        ; defined the model size small, which means it can have one data segment (64kb) and one code segment (64kb)
.stack 100h                         ; defined stack 100h - allocation 256 bytes to stack

.data                               ; data segment 
  msg db "Goodbye, buddy!$"         ; define bytes for msg variable - string 
  
.code                               ; code segment
start:                              ; start procedure

mov ax, @data                       ; moving data segment address to ax 
mov ds, ax                          ; moving ax to ds(data segment) - to access the variables of data segment

mov ah, 1                           ; function to take single character input
int 21h                             ; call the interrupt to take input from the keyboard
mov bl, al                          ; as al stores the input - moving input from al to bl (temporary)
int 21h

mov ah, 2                           ; function to print a single character
mov dl, 0dh                         ; carriage return cr - moves the cursor to the start of a new line 
int 21h                             ; execute interrupt
mov dl, 0ah                         ; line feed - moves the cursor to the next line 
int 21h                             ; execute interrupt

mov dl, bl                          ; moving bl (input) into dl to display
int 21h                             ; execute interrupt


mov ah, 2                           ; 28 - 32 for a new line 
mov dl, 0dh
int 21h 
mov dl, 0ah
int 21h


lea dx, msg                         ; take a message - msg to dx 
mov ah, 9                           ; function to print string
int 21h 

mov ah, 04ch                        ; function to terminate program - this code returns controls to dos - OS
int 021h                            ; exit program
   
end start     
