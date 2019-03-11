
		global		_start

		section		.text
_start:		mov		eax,4			; system call number for write
		mov		edx,len			; message length
		mov		ebx,1			; file handle 1 is stdout
		mov		ecx, message		; address of string to output
		
		int 80h					; request an interrupt on libc using INT 80h
exit:		mov		eax, 1			; system call number for exit
		mov		ebx, 0			; return 0 status on exit - 'No Errors'
		int 80h		

		section		.data			
message:	db		"Sajad Gholamzadehrizi, 23708986, CSC211-MM4........The string can be modified without having to update anywhere else in the code", 0Ah    ; our message
		len equ $ - message							      ; length of string
