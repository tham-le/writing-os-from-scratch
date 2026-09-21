[org 0x7c00]
mov ah, 0x0e
mov al, 'T'
mov bl, 1
int 0x10
mov ah, 0x0e
mov al, 'h'
int 0x10
mov ah, 0x0e
mov al, 'a'
int 0x10
mov ah, 0x0e
mov al, 'm'
int 0x10

mov ah, 0x0e
mov al, secret
int 0x10

mov ah, 0x0e
mov al, [secret]
int 0x10

mov ah, 0x0e
mov bx, secret
add bx, 0x7c00
mov al, [bx]
int 0x10
jmp $

secret db "x"
times 510-($-$$) db 0
dw 0xaa55
