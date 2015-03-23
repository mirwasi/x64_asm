section .data
	msg db "Hello, world"

section .text
	global _start

_start:
	mov	rax, 0x2000004
	mov	rdi, 1
	lea	rsi, [rel msg]
	mov	rdx, 13
	syscall
	mov rax, 0x2000001
	mov rdi, 0
	syscall
