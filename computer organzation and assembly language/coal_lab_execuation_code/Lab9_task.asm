include irvine32.inc
;also write user input funtion i just write the default value due to 
;again and again put the value
;now time we had no teached the binary Seacrch
.data
	msg byte "unsorting Array....",0
	msg1 byte "Sorted Array.......",0
	msg2 byte "Enter the Number : ",0
	Array byte 5,3,2,1,0
	msg3 byte "Enter the Number for Searching ",0
	msg4 byte "Yes This element in the Array ",0

.code
main proc
	;fill the Array
	
	
	;call filArrayRandomly
	;call crlf
	
	
	;call Display   ;display the unsorted list
	;call crlf
	
	;call bubblesort
	;call crlf


	call Searching 
	call crlf
	








main endp
filArrayRandomly proc
	
	mov edx,0
	mov esi,0
	mov edx,offset msg2
	mov ecx,0
	call writestring
	call crlf
	.while ecx<5
		call Readint
		mov Array[esi],al
		inc ecx
		inc esi
	.EndW
	
	

filArrayRandomly endp
	
Display proc
	mov edx,offset msg
	call writestring
	call crlf
	mov esi,0
	mov ecx,0
	.while ecx<5
		mov al,Array[esi]
		call writedec
		inc ecx
		inc esi
	.EndW
	call crlf
	
Display endp	
	
	

bubblesort PROC
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
		
		
bubblesort ENDP
   
Searching proc
	xor esi,esi
	xor eax,eax
	xor ebx,ebx
	xor edx,edx
	
	mov edx,offset msg3
	call writestring
	call crlf
	
	call readint		;user input saved into al

	mov edx,0
	.while ecx<5
		mov bh,Array[esi]
		
		
		push eax
		mov eax,0
		.if bh==al		;if both are equal it mean that element in the Array
			
			mov edx ,offset msg4
			call writestring
			call crlf
			mov al,bh 
			call writedec
			call crlf
		.Endif
		pop eax
		inc esi
		
	.Endw	
searching endp
	
	
end main