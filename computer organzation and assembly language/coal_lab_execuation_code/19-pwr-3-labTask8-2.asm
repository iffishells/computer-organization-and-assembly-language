Include irvine32.inc



.data
	array byte  10,9,8,7,6,5,4,3,2,1
	max byte 0
	msg byte "Maximum",0
	msg1 byte "Minimum ",0
	min byte 11
	
	h1 byte 0
	h2 byte 0
	h3 byte 0
.code
main proc
	xor ecx,ecx
	xor esi,esi
	xor eax,eax
	
	
	mov ecx,lengthof array  	
	mov esi,offset array
	mov edx,offset msg
	
	
L1:	
	mov al,[esi]
	
	cmp al,max
	Jb l2
			mov max,al
			call writestring
			call writedec
			call crlf
		l2:
	
	cmp al,min
	JA l3
			mov min,al
			mov edx,offset msg1
			call writestring
			call writedec
			call crlf
		l3:
		 
		
	inc esi
loop L1
	
l4:
	mov al ,[esi]
	
	cmp al,h1
	jAE L12
	mov bl,h2
		xchg h3,bl
		mov h2,bl
	mov bl ,h1
		xchg h2,bl
	mov h1,bl
		xchg h1,al
	L12:
	
	cmp al,h2
		jAE L5
	mov bl,h1
		xchg h3,bl
	mov h3,bl
		xchg h2,al
	L5:
	cmp al,h3
		jAE L6
		xchg h3,al
	L6:	
loop l4
	


	





main endp
end main