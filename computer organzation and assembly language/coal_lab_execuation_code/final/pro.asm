include irvine32.inc
count=5
.data
	
	
	
.code
main proc
	xor eax,eax
	mov ax, 00ffh
	
	add al,1
	call dumpregs
	
	add ah,1
	call dumpregs
	
	
	mov al,-127
	
	sub al,2
	
	;call writedec
	;call crlf
	call dumpregs
	
	neg al 
	call dumpregs
	
	
	
	
main endp
end main