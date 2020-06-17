include irvine32.inc
;count=5
.data
		
	
	
.code
main proc
	xor eax,eax
	
	push  10h
	push 20h
	push 05h
	call addsub
	call writedec
	
	
main endp
	addsub proc
		;xor eax,eax
		;xor ebx,ebx
		push ebp
		mov ebp,esp
		
		mov eax,[ebp+16]
	
		
		add eax,[ebp+12]
		sub eax,[ebp+8]
		
		
		;call dumpregs
		
	
			
		mov esp,ebp
		pop ebp
		
		
	ret 12
	addsub endp
end main