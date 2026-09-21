# writing-os-from-scratch

Small x86 boot sector experiments in NASM, following along with [Writing an OS from Scratch](https://angom.myweb.cs.uwindsor.ca/teaching/cs330/WritingOS.pdf).

Each file is named after the book section it comes from.

- `3.4.2-x-marks-the-spot.asm`: prints "Tham" via BIOS teletype, then pokes at reading a byte three ways (immediate, direct memory, segment relative with `0x7c00`).
- `3.4.4-using-the-stack.asm`: sets up a stack at `0x8000`, pushes and pops values, reads bytes near the end of the loaded sector.
- `3.4.5-control-structures.asm`: basic branching with `cmp`, `jle`, `jl` to pick between three code paths.

## Build and run

```bash
nasm -f bin 3.4.2-x-marks-the-spot.asm -o boot.bin
qemu-system-x86_64 boot.bin
```

Swap in another file name to run that experiment instead.
