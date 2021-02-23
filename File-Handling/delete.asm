
	; PROGRAM TO DELETE A FILE

section .rodata
	filename: db "readme.txt", 0

section .text
	global main
	main:
		push ebp
		mov ebp, esp

		mov ebx, filename
		mov eax, 10
		int 0x80

	leave 
	ret
