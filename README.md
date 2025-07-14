# Assembly Loops & Arrays Lab

This repository contains a collection of assembly language exercises focused on implementing loops, arrays, and common algorithms. All examples use NASM syntax for the x86 architecture. The code, challenges, and visual aids are designed to help students and beginners grasp fundamental assembly concepts through hands-on practice.

## Objectives

- Practice using different loop constructs (`LOOP`, `JMP`, conditional jumps) in assembly.
- Work with arrays for data storage and manipulation.
- Implement algorithms such as finding the maximum in an array, counting iterations, and generating Fibonacci sequences.
- Reinforce understanding through challenges and flowchart visualizations.

## File Overview

- `array_max.asm` — Find the maximum value in an array.
- `counter_ebx.asm` — Demonstrates loop counting using the EBX register.
- `fibonacci.asm` — Generates Fibonacci numbers using loops and arrays.
- `9challenges.md` — A list of nine assembly programming challenges for extra practice.
- `Flowchart - assembly-loops-arrays-lab.pdf` — Visual flowcharts illustrating loop and array logic.
- `array_max.asm confirmation of code working!.pdf` — Output/confirmation of `array_max.asm`.
- `counter_ebx.asm confirmation of code working!.pdf` — Output/confirmation of `counter_ebx.asm`.
- `fibonacci.asm confirmation of code working!.pdf` — Output/confirmation of `fibonacci.asm`.

## Usage

### Assemble and Run (Linux Example)

```bash
nasm -f elf64 array_max.asm -o array_max.o
ld array_max.o -o array_max
./array_max

nasm -f elf64 counter_ebx.asm -o counter_ebx.o
ld counter_ebx.o -o counter_ebx
./counter_ebx

nasm -f elf64 fibonacci.asm -o fibonacci.o
ld fibonacci.o -o fibonacci
./fibonacci
```

### Debugging

Use `gdb` to step through your programs and observe register changes

## Learning Outcomes

- Gain proficiency in writing and debugging loops in assembly.
- Learn array manipulation and algorithm implementation at the assembly level.
- Visualize program flow using provided flowcharts.
- Challenge yourself with practical exercises in `9challenges.md`.
