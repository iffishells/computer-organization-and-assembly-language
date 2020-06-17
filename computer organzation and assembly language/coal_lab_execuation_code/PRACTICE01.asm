include irvine32.inc

.data
	val byte 65
	
	msg  byte "A ",0
	msg1  byte "B ",0
	msg2 byte "C",0
	msg3 byte "D",0
	msg4 byte "F",0
	
	mss byte "invalid",0
	
.code
main proc	
	mov edx,offset msg

	xor eax,eax
	mov al,val 
	cmp al,100
	
	
	JB L1
				;jum below if al < 100
	L1:
	cmp al,90
	JA L2
	cmp al,80
	JA L3
	cmp al,70
	JA L5
	cmp al,60
	JA L7
	cmp al,0
	JA L9
	
	
	L2:			;jump above is al>90
	mov edx,offset msg
	call writestring
	call crlf
	
	L3:
	cmp al,90
	JB L4
	
	L4:
	mov edx,offset msg1
		call writestring
	call crlf
	L5 :
	cmp al,80
	JB L6
	
	L6:
	mov edx,offset msg2
	call writestring
	call crlf
	
	L7:
	mov edx,offset msg3
	call writestring
	call crlf

	L9:
	cmp al ,60
	JB L10
	L10:
	mov edx,offset msg4
	call writestring
	call crlf


main endp	
end main
		