include irvine32.inc

 
.data 

	;swap(a,b)
	a byte 3
	b byte 4
	
	;for the power funtion
	e dword 4
	d dword 3
	msg1 byte "power funtion , : ",0
	
	; for the factorial funtion
	fact_val dword 5
.code
main proc
	;call swap
	;call writedec
	;call  crlf
	
	;call power
	;call writedec
	;call crlf
	
	call factorial
	call crlf
	exit


main endp
swap proc
	xor eax,eax
	xor ebx,ebx
	mov al,a
	call crlf
	mov bl,b
	xchg al,bl
	
	
	ret
swap endp
	
power proc
	mov eax,0
	mov ecx,0
	mov ecx,d
	mov eax, e
	mov ebx ,e
    L1:
	mul ebx
    loop L1
	ret
power endp
end main
