include irvine32.inc


.data
	array byte 10 dup(0) 
	count Dword ?
	val dword  ?
.code

main proc
	;clearing
	
	xor ecx,ecx
	xor eax,eax
	xor esi,esi
	mov ebx,lengthof array
	mov val,ebx
	mov ecx,ebx  ;lenght of the list
	
	
L1:
	mov count ,ecx
	mov ecx,al-1
L2:
	mov bl,array[esi]
	cmp array[esi] ,array[esi+1]
	JA L3
		xchg array[esi],array[esi+1]
		xchg array[esi+1],array[esi]
	
	loop L2
	mov ecx,count
	loop L1
	
	
	
	




exit
main endp
end main