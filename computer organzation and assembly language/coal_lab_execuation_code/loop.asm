Title loop

include irvine32.inc
 
.data
	bVal BYTE ? 
	wVal WORD ? 
	dVal DWORD ? 
	dVal2 DWORD ? 
	dValArray DWORD 5 DUP(?)
	
.code 
main proc
	mov ax,0
	mov esi,OFFSET bVal   ; ESI = 00404000 
	call DumpRegs 
	 
	mov esi,OFFSET wVal   ; ESI = 00404001 
	call DumpRegs 
	 
	mov esi,OFFSET dVal   ; ESI = 00404003 
	call DumpRegs 
	 
	mov esi,OFFSET dVal2   ; ESI = 00404007 
	call DumpRegs 
	mov esi,OFFSET dValArray  ; ESI = 0040400B 
	call DumpRegs 
	

	
	exit
	
main endp
end main