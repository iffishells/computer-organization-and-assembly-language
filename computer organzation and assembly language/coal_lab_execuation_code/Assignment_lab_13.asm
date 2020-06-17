include irvine32.inc


.data
	val byte 45
	val2 byte 65
	msg byte "Sawap the Value ",0
	
.CODE
MAIN PROC
	xor eax,eax
	xor ebx,ebx
	xor ecx, ecx
	xor edx,edx
	
	mov edx,offset msg
	call writestring
		
	
	call Question1
	




MAIN ENDP
	Question1 proc
	
	call dumpregs
	call crlf
	mov al,val
	mov bl,val2
	call dumpregs
	call crlf
	
	xchg al,bl
	call writedec
	call dumpregs
	
	Question1 endp
END MAIN