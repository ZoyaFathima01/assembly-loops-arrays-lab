section .text
    global _start

_start:
    mov eax, 0      ; F(0)
    mov ebx, 1      ; F(1)
    mov ecx, 10     ; 10 steps to reach F(10)

fib_loop:
    mov edx, eax    ; store old F(n-2) in EDX
    add eax, ebx    ; F(n) = F(n-2) + F(n-1)
    mov ebx, edx    ; update F(n-1) to previous F(n-2)
    loop fib_loop   ; ECX -= 1, loop until ECX == 0

    ; EAX now holds F(10) = 55
    mov ebx, eax    ; exit code = F(10)
    mov eax, 1      ; sys_exit
    int 0x80
