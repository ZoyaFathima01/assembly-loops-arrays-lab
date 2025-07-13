section .text
    global _start

_start:
    mov eax, 0      ; fib0 = 0
    mov ebx, 1      ; fib1 = 1
    mov ecx, 10     ; count 10 Fibonacci numbers
    mov edx, 0      ; accumulator for sum (optional)

loop_fib:
    add edx, eax    ; add current fib0 to sum
    mov esi, eax    ; save fib0 temporarily
    add eax, ebx    ; fib0 = fib0 + fib1 (next fib number)
    mov ebx, esi    ; fib1 = previous fib0
    dec ecx
    jnz loop_fib

    mov ebx, eax    ; **move final fib number into ebx for exit code**
    mov eax, 1      ; sys_exit
    int 0x80
