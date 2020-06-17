Include irvine32.inc 
 
.data 
	val byte 1 
	msg byte "Enter the Number : ",0
	
.code
	
main proc
call dumpregs  ; zero flag always set on tge start of a program
		; flag distrub only when the artihematic operation is perform (add,mul,subt)
jNz L1

	call dumpregs
	call crlf
	
	call dumpregs
	call crlf
L1:
	
 exit 
 main ENDP 
 END main