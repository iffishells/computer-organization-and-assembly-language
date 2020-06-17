include irvine32.inc

.data
	world byte " appple ",0
	
	line byte "----------",0
.code
main proc
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx
	

	mov ecx,5
	mov eax ,1000
	mov dl,0
	mov dh,0
	forloop:
		call delay
		call printmsg
		call gotoxy
		
		push eax
		xor eax,eax
		mov al,dl
		call writedec
		call crlf
		mov ah,dh
		call writedec
		call crlf
		call writestring
		
	loop forloop
		
main endp
	
	printmsg proc
	
	
		mov edx,offset world
		
		ret 
	printmsg endp
end main