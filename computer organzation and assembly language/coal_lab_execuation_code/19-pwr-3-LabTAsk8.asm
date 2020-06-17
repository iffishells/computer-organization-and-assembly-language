Include irvine32.inc 
 
.data 
	a byte 16
	b byte 32
	com byte 64
	d byte 64
	equation byte ?
	ls byte ?
	gr byte ?
	e byte ?
	count byte 0
	
	h1 byte 0
	h2 byte 0
	h3 byte 0
.code 
main PROC
	;clearing
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx
	
	mov al,a
	add al,b
	mov e,al  		; e= a+b
	
	mov al,e
	cmp al,d   		;if e==d
	
	jz next  		;if  e==d then zero flag is set the goto the next
		mov equation ,1 
	next:
	
	jNz l1     		;jump is zero falf is not zero
		mov equation ,0
	l1:
	
	cmp al,d    		;if e>d then zero flag and carry falg is zero
	Ja l9			;JA check both CF,Zf if both zero then return True	
		mov gr,1
	l9:
	JNBE l3       		;if ZF and Cf is not Equal
		mov gr,0         ; gr=0
	l3:
	
	cmp al,d      		;if (al<5) then carry falg is set
	
	JC l4			;if carry flag is set then do l4
		mov ls,1
	l4:
				;else
	JNC l5        		;if not less then
		mov ls,0
		beginwhile:
			cmp al,d
			JNE endwhile         ;if not equal
			
			inc eax
			inc count
			call writedec
			call crlf
		jmp beginwhile
		endwhile:
		mov d,al
	l5:
	
	
	
	;Quesiton 2 part !!
	

	
		
exit
	
	
	
	
	
	 
exit 
main ENDP 
END main
	
	
	

