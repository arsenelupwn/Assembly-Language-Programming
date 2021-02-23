section .rodata
	filename: db "readme.txt", 0
	
section .text
	global main
	main:
		push ebp
		mov ebp, esp

		mov eax, 8
		mov ebx, filename
		mov ecx, 0777
		int 0x80

	leave
	ret
