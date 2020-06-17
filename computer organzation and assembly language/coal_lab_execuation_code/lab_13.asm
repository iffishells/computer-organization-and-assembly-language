INCLUDE Irvine32.inc 
 
.data
	bubble_arry byte 1,5,7,8,9
	check byte "yeah! its working",0
.code
	 
	main PROC   
	xor ecx,ecx
	xor eax,eax
	xor ebx,ebx
	
	mov esi,offset bubble_arry
	mov bl,lengthof bubble_arry
	.while bl>0
		
		mov ecx,lengthof bubble_arry
		L1:
			mov eax,[esi]
			call dumpregs
			call writedec
			call crlf
			
			inc esi
			
		loop L1
		
		
		dec bl
	.endw
main endp
end main

 
