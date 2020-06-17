include irvine32.inc
.data
	bVal BYTE ? 
	wVal WORD ? 
	dVal DWORD ? 
	dVal2 DWORD ? 
	dValArray DWORD 5 DUP(?)
	
	;seconed program 
	new_val_array Dword 1,2,3,4,5
.code

	; offset operator
	
	; used call writedec foe esi 
main proc
comment:mov esi,OFFSET bVal   ; ESI = 00404000 
	call DumpRegs 
	 
	mov esi,OFFSET wVal   ; ESI = 00404001 
	call DumpRegs 
	 
	mov esi,OFFSET dVal   ; ESI = 00404003 
	call DumpRegs 
	 
	mov esi,OFFSET dVal2   ; ESI = 00404007 
	call DumpRegs 
	 
	mov esi,OFFSET dValArray  ; ESI = 0040400B 
	call DumpRegs
	call crlf:
	;2nd program..
	
	
	mov esi,0
	mov,eax,0
	call writedec
	call crlf
	mov esi, offset new_val_array 
	call dumpregs
	call writedec
	call crlf
	
	mov eax,[esi]
	call dumpregs
	mov esi,offset new_val_array +8
	
	;segment and return the sum in esi
	mov eax,[esi]
	call dumpregs
	call crlf
	
	exit
main endp
end main