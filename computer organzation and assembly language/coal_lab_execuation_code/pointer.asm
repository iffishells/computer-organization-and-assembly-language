include irvine32.inc
.data
	mydouble Dword 12345678h
	mybytes byte 12h,34h,56h,78h
.code
 	main proc
 	mov ax, word  ptr mydouble
 	call dumpregs
 	
 	mov al,byte ptr mydouble
 	mov al,byte ptr [mydouble+1]
	mov al,byte ptr [mydouble+2]
	mov ax,word ptr mydouble
	mov ax,word ptr [myoduble+2]
	mov ax, word ptr [mybyte]
	mov ax,word ptrv[mybyte+2]
	mov eax,dword ptr mybyte
	
	 	
	
	exit
main endp
end main