include irvine32.inc

.data 
	arrayw  Dword 1,2,3,4,5,6
	
.code
main proc
	xor ecx,ecx
	xor esi,esi
	xor eax,eax
	xor ebx,ebx
	mov ecx ,lengthof arrayw
	mov esi,offset arrayw
	mov esi,4
L1:	
	mov eax,arrayw[esi*TYPE arrayw] 
	add ebx,eax
	inc esi
Loop l1 
	call writedec
	call crlf
	call dumpregs
	call crlf

main endp
end main