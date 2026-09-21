mov bx, 45
cmp bx, 4
jle block1
cmp bx, 40
jl block2
mov al, "C"
jmp end
block1:
mov al, "A"
jmp end
block2:
mov al, "B"
end:

mov ah, 0x0e
int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55
