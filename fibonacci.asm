section .text
    global _start

_start:
    mov eax, 0      ; fib0
    mov ebx, 1      ; fib1
    mov ecx, 10     ; counter for 10 Fibonacci numbers
    mov edx, 0      ; accumulator for sum

loop_fib:
    add edx, eax    ; add fib0 to sum
    mov esi, eax    ; save fib0
    add eax, ebx    ; fib0 = fib0 + fib1
    mov ebx, esi    ; fib1 = previous fib0
    dec ecx
    jnz loop_fib

    mov eax, 1
    int 0x80
