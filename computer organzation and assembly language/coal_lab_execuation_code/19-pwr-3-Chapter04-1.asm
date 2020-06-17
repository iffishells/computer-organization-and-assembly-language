include irvine32.inc

.data
	varW WORD 6543h,1202h

	
.code
main proc
	
	mov esi,0
	mov eax,0

	mov bl,2h
	;BYTE PTR [varW]
	call writehex
	call dumpregs
	exit	
main endp
end main