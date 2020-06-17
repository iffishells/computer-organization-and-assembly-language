include irvine32.inc

.data
	val byte " apple ",0
	space byte "       ",0       
.code
main proc
	;----------CLear Register---------------------
	xor edx,edx
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	;----------------------------------------------
	
	;-----------get start Program-----------------
		
	;--------------Co-ordninates----------------
		mov dl,0	;x co -ordinates
		mov dh,0	;y  co -ordinates
		push edx
	;--------------------------------------------
	
	
		
		mov bx,2
		mov eax,100
		
		;dl=0
		;dh,1
		.while bx>1    ; ebx>1 (0>1) =True
				mov ecx,23
				forloop:
					call delay 			
						pop edx
						;---------------
						call gotoxy
						push edx
					
					;-------------------
					xor edx,edx
					mov edx,offset space
					call writestring
						
						
					pop edx	
					add dl,7
					add dh,0
						
					push edx
						
					;----------------------------print space previos location----------------
					mov edx,offset val
					call writestring
				;--------------------------------------------------------
				loop forloop
				
				
				;,,,,,,,,,,,2nd loop in the while loop----------------
					mov ecx,20
				secloop:
					
					call delay 			
						pop edx
						;---------------
						call gotoxy
						push edx
					
					;-------------------
					xor edx,edx
					mov edx,offset val
					call writestring
						
						
					pop edx	
					sub dl,7
					add dh,0
						
					push edx
						
					;----------------------------print space previos location----------------
					mov edx,offset space
					call writestring
				loop secloop
				
				
		.ENDW






main endp
end main
