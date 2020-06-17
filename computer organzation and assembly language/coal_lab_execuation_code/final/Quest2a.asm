include irvine32.inc
;count=5
.data
	buffer byte 32 dup(0),0
	msg byte "yes",0
	msg1 byte "no",0
	
.code
main proc
	xor eax,eax
	xor ecx,ecx
	
	mov ecx,0
	mov esi,offset buffer
	
L1:
	shl eax,1
	Mov byte ptr [esi],"0"
	JNC L2
	mov byte ptr [esi] ,"1"
	
	
L2:	inc esi
	
	inc ecx
	cmp ecx,32
	JBE L1
	
	
	call dumpregs
	mov edx,offset buffer
	call writestring
	call crlf
	
	
	
	
	
	
main endp
end main