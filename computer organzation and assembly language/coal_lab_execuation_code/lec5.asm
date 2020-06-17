include irvine32.inc
;procedure for adding two Number
.data
	array dword 100,200,300
	thesum dword ?
	
	
.code
main proc
	xor eax,eax
	xor ecx,ecx
	xor edx,edx
	xor ebx,ebx
	
	mov esi,offset array  ;move the offset
	mov ecx ,lengthof array ;lenght
	call ArraySum
	mov thesum,eax
	call writedec
	call crlf
main endp
	ArraySum proc uses esi ecx
	;uses operator automatically push the value 
	;into the stack as well as pop
	
L1:
	add eax,[esi]
	add esi,type Dword ;point to the next integer
Loop L1
	
	ret
	ArraySum endp
end main