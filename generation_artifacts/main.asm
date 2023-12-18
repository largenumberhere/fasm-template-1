; Assembly source file for x86_64 linux with the FASM assembler
;  Program purpose: 

format elf64 executable 3			; use raw 64-bit elf executable format
entry _start						; declare linker to use the _start label as the program entrypoint


; code section. Can also hold readonly memory
segment readable executable
	
	_start:	
		; exit with success
		mov rax, 60
		mov rdi, 0
		syscall



; writeable reserved memory
segment readable writeable



; read-only reserved memory
segment readable


