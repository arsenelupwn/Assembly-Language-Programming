BITS 32
extern printf

section .rodata
	format: db "%s", 0
	formatd: db "%d", 0
	msg: db "seconds: ", 0

section .text
	global main
	main:
		push ebp
		mov ebp, esp
		sub esp, 0x8

		push msg
		push format
		call printf
		add esp, 0x8		

		xor eax, eax
		mov eax, 13
		int 0x80

		sub esp, 0x8
		push eax
		push formatd
		call printf
		
	leave 
	ret
