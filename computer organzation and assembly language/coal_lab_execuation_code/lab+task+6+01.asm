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
