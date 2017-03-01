; simple addition - takes two ints from STDIN, adds them together, and returns the result
; set start
global _start

; the actual code
section .data:

	; calling read() to get input from stdin
	mov eax, 0x03	; syscall 0x03 = read()
	mov ebx, 0x0	; arg1 = 0x0 = fd for stdin
	mov ecx, 
	

; addition subroutine
_addition:
	push ebp	; save the previous base pointer
	mov ebp, esp	; adjust the base pointer to where esp was

	mov eax, [ebp+8]; load the first arg at ebp+8 into eax
