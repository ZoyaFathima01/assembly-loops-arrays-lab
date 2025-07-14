section .text
    global _start

_start:
    mov ebx, 0      ; EBX is the counter, start at 0
label:
    inc ebx         ; increment EBX
    cmp ebx, 10     ; compare EBX to 10
    jl label        ; loop if EBX < 10

    mov eax, 1      ; exit syscall
    int 0x80
