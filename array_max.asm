section .data
array dd 12, 7, 25       ; Array with 3 integers (length = 3)
len   equ 3              ; Length = 3

section .text
global _start

_start:
    mov ecx, len         ; Set loop counter
    mov esi, array       ; ESI points to the array
    mov eax, [esi]       ; Assume first value is the largest
    add esi, 4           ; Move to second element
    dec ecx              ; One element checked

find_largest:
    cmp ecx, 0
    je done
    mov ebx, [esi]       ; Load current element
    cmp ebx, eax
    jle skip             ; If smaller, skip
    mov eax, ebx         ; Update largest
skip:
    add esi, 4
    dec ecx
    jmp find_largest

done:
    mov ebx, eax         ; Store result (largest) in EBX
    mov eax, 1           ; syscall: exit
    int 0x80
