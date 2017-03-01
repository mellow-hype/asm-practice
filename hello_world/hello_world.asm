; set the global start
global _start

; define the .rodata region
section .rodata
	; declare some bytes and save a hello world string to it
	hello_world: db "Hello world!", 0xa, 0x0

; start the .text section which holds the code
section .text
_start:
	mov eax, 0x04	; store the number 4 in eax (0x04 = write())
	mov ebx, 0x1	; store 1 in ebx (1 = standard out file descriptor)
	mov ecx, hello_world
	mov edx, 14	; length of string
	int 0x80	; send interrupt signal 0x80 which the OS interprets
				; as a syscall

	mov eax, 0x01 	; 0x01 = exit()
	mov ebx, 0	; 0 = no errors
	int 0x80

