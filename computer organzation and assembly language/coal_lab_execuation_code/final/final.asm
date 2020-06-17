include irvine32.inc

.data
	mydouble dword 123400h,00340012h,56789123h,78563040h
.code
main proc
	xor eax,eax
	mov eax ,dword ptr mydouble
	call writehex
	call crlf
main endp
end main