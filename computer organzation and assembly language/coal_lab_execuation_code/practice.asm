include irvine32.inc

.data

	world byte "Apple",0
	space byte "     ",0
	msg byte "outerloop",
	
.code
	main proc
		;--------------clear Register----------------------------
		xor edx,edx
		xor eax,eax
		xor ecx,ecx
		xor ebx,ebx
		;-----------Enter th co-ordnates---------------------------------------
		mov dl,0	;X-co-ordnites
		mov dh,0	;X-co-ordnites
		;---------------------------------
		push edx
		call case1
		
		
		
		
		
		
main endp
			case1 proc
				mov ecx,5	;for outerloop
				
				mov eax,1000
				
				outerloop:
				
					mov edx,offset msg
					call writestring
					call crlf
					push ecx		;push for outerloop
					
					mov ecx,2
					innerloop:
						call delay
						
						
						mov edx,offset world
						call writestring
						call crlf
						call case2
					
					
					loop innerloop
					
					
					
					pop ecx 	;pop for outerloop
					
				loop outerloop
					
				case1 endp
			case2 proc
				
				pop ecx
				pop edx
				mov al,dl
				call writedec
				call crlf
				
				
				mov ah,dh
				call writedec
				call crlf
				
				push edx
				push ecx
				ret
			case2 endp
end main