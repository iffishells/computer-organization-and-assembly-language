include irvine32.inc
.data
	world byte " appple ",0
	
	line byte "       ",0
	val dword  ?
.code
main proc
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx
	
	mov ecx,10
	
	mov val ,ecx
	mov eax,val
	call dumpregs
	call crlf
	call writedec
	call crlf
	
	
main endp
	
	
	
end main