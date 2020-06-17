include irvine32.inc

.data

	world byte "Apple",0
	space byte "       ",0
	check byte "oky",0
	
	count dword ?
.code
	main proc
	;--------------------clear All register-------------------------------------
		xor edx,edx
		xor eax,eax
		xor ecx,ecx
		xor ebx,ebx
		
	;----------------------------------------------------------------------------
	
	;------------------initilze the goto co_ordinates---------------------------
		mov dl,0		; DL is x Co-ordinates
		mov dh,0		;DH is Y -Co o-rdinates
		
		push edx			;save the Co-ordinates
		xor edx,edx
		;call dumpregs
		 ;call crlf
	;--------------------------start the program----------------------------------
	
		mov ecx,5			;Range the Outer loop
		mov eax,1000
		outerloop:
				
				mov count,ecx
				xor ecx,ecx
				mov ecx,10		;Ranger Inner loop
				
				innerloop:
				
				;[ Ds] edx ,ecx     ;store on Stack

						
				loop innerloop
					
					
					mov ecx,count
					
					
		loop outerloop
		
		Next:
			
			pop edx
			sub dl,7
			mov dh,2
			push edx
			mov ecx ,5
			mov eax,1000
			outloop:	
				mov count,ecx
				
				mov ecx,10
				inloop:
					call delay
					pop edx
					call gotoxy
					xor edx,edx
					mov edx,offset space
					call writestring
					
					
					;--------------
					pop edx
						sub dl,7
						mov dh,1
					push edx
				
				
				;-------------------------------
				mov edx,offset world
				call writestring
				loop inloop
			mov ecx,count
			loop outloop
	
	
main endp
	
end main