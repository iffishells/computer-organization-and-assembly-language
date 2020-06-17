Title add and subb

include irvine32.inc
 
.data
	val byte 2
	val02 byte 3
	
.code 
main proc
	mov eax ,0
	
	mov al,val
	call writedec ; getting  the value in the al postiton
	call crlf
	add al,val02
	call writedec
	call crlf
	; other way  to add the two number
	
	

	
	exit
	
main endp
end main