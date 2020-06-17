include irvine32.inc

.data


.code

main proc
	
	call fun	

main endp
	
	fun proc
		xor esi,esi
		mov ecx,10
		
		L1:
			push esi
			
			inc esi
		loop L1
		
		mov ecx,10
		L2:
			pop esi
			mov eax,esi
			call writedec
			call crlf
			
		Loop L2
		push ebp
		mov ebp,esp
		
		

	fun endp
end main 
