include irvine32.inc


.data
	fact byte 1
	num byte 6
	;power funtion
	a DWORD 2
	b DWORD 3
	
	;swap funtion
	val01 btye 2
	 val02 byte 5
.code
main proc


	;call factorial 
	;call writedec
	;call crlf
	
	
	;power funtion
	
	call power
	call writedec 
	call crlf
	
	
	;swap funtion
	;call swap
	;call writedec
	;call crlf
	

exit
main endp

	factorial proc
	mov ecx,0
	movzx ecx, num
	xor eax,eax
	mov al,fact
	
l1:
	mul fact 
	inc fact 
	
Loop l1
	ret 
	factorial endp

	
	power proc
	xor eax , eax
	xor ebx,0
	mov ecx,b
	mov eax,1
		
	
	mov ebx,a
		
		
	l1:
	mul ebx	
	
loop l1
	ret 
	power endp
	
	sawp proc
	
	
	xor eax,eax
		xor ebx,ebx
		mov al, val1
		mov bl,val2
		xchg al,bl
		ret
		sawp endp
end main


;#########################################################################################################
include irvine32.inc
.data
	msg byte "Enter the Number : ",0dh,0
	arry01 dword 5 dup(0)
	arry02 dword 5 dup(0)
	arry03 dword 5 dup(0)
.code 
main PROC
	
	mov esi ,0
	mov ecx,5

l1:
	mov edx,offset msg
	call writestring
	call crlf
	call readint
	mov arry01[esi] ,eax
	inc esi
loop l1
	xor eax,eax
	
	mov ecx,5
l2:
	mov edx,offset msg
	call writestring
	call crlf
	call readint
	mov arry02[esi],eax
	inc esi
loop l2
	mov ecx,5
	mov esi,0
	
l3:

	
	mov eax,arry02[esi]
	mov ebx,arry01[esi]
	add eax,ebx
	mov arry03[esi],eax
	inc esi
loop l3
	mov eax,arry03[0]
	call writedec
	call crlf

	exit

main ENDP
	


END main
;###############################################################################################33333
include irvine32.inc

.data
	array dword 3 dup(0)
	msg1 byte "Enter the first Name  : " ,0
	msg2 byte "Enter the Middle Name  : " ,0
	msg3 byte "Enter the last Name  : ",0
	input dword ?
	
.code

main proc
	call person
	call writestring
	call crlf
	
	exit
main endp

	person proc
	
	
	call readstring
	mov array[esi],eax
	inc esi
	
	mov edx, offset msg2
	call writestring
	call crlf
	
	call readstring
	mov array[esi],eax
	inc esi
	
	mov edx, offset msg3
	call writestring
	call crlf
	
	call readstring
	mov array[esi],eax
	inc esi
	
	
	mov eax, array[2]
	call writestring
	call crlf
	
	
	mov eax, arry[0]
	call writedec
	call crlf
	
	
	mov eax, array[1]
	call writestrin
	call crlf
	
	ret 
	person endp
end main
	
	
	





end main	