
	; PROGRAM TO UPDATE THE EXESTING FILE WITH SOME NEW CONTENT

section .rodata
	filename: db "readme.txt", 0
	updated: db "--updated--", 0

section .text
	global main
	main:
		push ebp
		mov ebp, esp

		mov eax, 5
		mov ebx, filename
		mov ecx, 1
		int 0x80
		
		mov ebx, eax
		mov ecx, 0
		mov edx, 2
		mov eax, 19
		int 0x80

		mov ebx, eax
		mov ecx, updated
		mov edx, 11
		mov eax, 4
		int 0x80

	leave
	ret




