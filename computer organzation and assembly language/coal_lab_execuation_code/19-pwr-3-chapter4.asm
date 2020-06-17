include irvine32.inc


.data
	arrayW WORD 1000h,2000h,3000h
	
.code

main proc
	xor eax,eax
	mov esi,0
	mov ecx,0
	
	mov ecx,3
	mov edi,offset arrayw
l1:
	
	add eax,[edi]
	add edi ,type arrayw
	call crlf
loop l1
	call writehex
	
	call dumpregs
	call crlf


main endp

end main