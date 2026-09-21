mov ah, 0x0e
mov bp, 0x8000
mov sp, bp
push "a"
push "b"
push "c"


mov al,[0x7ffa]
int 0x10

pop bx
mov al,bl
int 0x10

pop bx
mov al,bl
int 0x10

mov al,[0x7ffe]
int 0x10
jmp $

times 510-($-$$) db 0
dw 0xaa55
