include irvine32.inc


 .data
 	val1 sbyte -1
 	valw sword +32767

	
.code
main proc
	xor eax,eax
	xor ebx,ebx
	
	;mov al, val1
	;neg al
	
	
	
	neg valw
	call writedec 
	call  dumpregs
	call crlf
	
	
main endp
end main