section .text
    global _start

_start:
    mov ebx, 10        ; EBX will act as our counter
    mov eax, 0         ; Just a dummy register to test loop

counter_loop:
    inc eax            ; Increase EAX to simulate work being done
    dec ebx            ; Decrement EBX manually
    jnz counter_loop   ; If EBX ≠ 0, repeat the loop

    mov eax, 1         ; syscall: exit
    int 0x80
