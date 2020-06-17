INCLUDE Irvine32.inc 
 
.data 
	Count = 100  ;JUST LIKE THE DEIND LIKE IN C++
	string1 BYTE Count DUP(?) 
.code 

main PROC 

 	mov al,0FFh   
 	mov edi,OFFSET string1   
 	mov ecx,Count   
 	cld   
 	rep stosb 
 
exit 
main ENDP 
END main 