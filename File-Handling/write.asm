
	; PROGRAM TO WRITE INTO A FILE WITH SOME CONTENT

section .rodata
	filename: db "readme.txt", 0
	contents: db "Hello World!", 0
	
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

	leave
	ret

