include irvine32.inc


.data 
	Array  byte 9,8,7,6,5,4
	min_index dword ?
	msg byte "  show time ",0
.code
main proc
	
	mov ecx,0
		mov edx,offset msg
		mov ebx,0
		mov ecx,5
		mov esi,0
		mov edi,0
		mov eax,0
		mov ebx,0
		.while al<5		;uppper loop
			
			inc al
			;mov ecx,5
			innerloop :
				mov bh, Array[esi]    ;ah =9
				mov bl,Array[esi+1]	;bl =8
				
				.if bh<bl  
					mov esi,0
					mov edi,0
					mov eax,0
										;if 5<4 then swap it
					;call swap
					;mov bh ,Array[esi]   ;ah=9
					;mov bl,Array[esi+1]	;bl=8
					mov Array[esi],bl	;at zero index =8
					mov Array[esi+1],bh	;at zero index= 9
					
					
					;checking
					mov al,bl
					call writedec
					call crlf
				.endif
				
			inc esi  			;now esi =1	
			loop innerloop
	
			
	.EndW
	;call display
	;call crlf
	
	
main endp
	
	display proc
	mov eax,0
	mov esi,0
	mov ebx,0
	.while bl<5
		mov al,Array[esi]
		call writedec
		call crlf
		inc esi
		inc bl
	.endW
	
	display endp
	
end main