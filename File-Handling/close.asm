extern printf

section .rodata
	filename: db "readme.txt", 0
	contents: db "Hello World!", 0
	format: db "%s", 0	

section .bss
	store resb 255,	

section .text
	global main
	main:
		push ebp
		mov ebp, esp

		mov eax, 8
		mov ebx, filename
		mov ecx, 0777
		int 0x80
		
		mov ebx, eax
		mov ecx, contents
		mov edx, 12
		mov eax, 4
		int 0x80

		mov eax, 5
		mov ebx, filename
		mov ecx, 0
		int 0x80

		mov ebx, eax
		mov ecx, store
		mov edx, 12
		mov eax, 3
		int 0x80
	
		sub esp, 0x10
		mov eax, store
		push eax
		push format
		call printf
		add esp, 0x10

		mov ebx, eax		; AS FILE DESCRIPTOR IS ALREADY SAVED IN EBX
		mov eax, 6
		int 0x80

	leave
	ret




