section .text
    global _start

_start:
    mov esi, array      ; address of array start
    mov eax, [esi]      ; current max = first element
    mov ecx, 2          ; counter for two more elements

next_element:
    add esi, 4
    mov ebx, [esi]
    cmp eax, ebx
    jge skip            ; if current max >= ebx, skip
    mov eax, ebx        ; else update max
skip:
    loop next_element

    mov eax, 1
    int 0x80

section .data
    array dd 5, 10, 7
