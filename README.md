# writing-os-from-scratch

Small x86 boot sector experiments in NASM, following along with [Writing an OS from Scratch](https://angom.myweb.cs.uwindsor.ca/teaching/cs330/WritingOS.pdf).

- `boot.asm`: prints "Tham" via BIOS teletype, then pokes at reading a byte three ways (immediate, direct memory, segment relative with `0x7c00`).
- `boot2.asm`: sets up a stack at `0x8000`, pushes and pops values, reads bytes near the end of the loaded sector.
- `boot3.asm`: basic branching with `cmp`, `jle`, `jl` to pick between three code paths.

## Build and run

```bash
nasm -f bin boot.asm -o boot.bin
qemu-system-x86_64 boot.bin
```

Swap in `boot2.asm` or `boot3.asm` for the other experiments.
