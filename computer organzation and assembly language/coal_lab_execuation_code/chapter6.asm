include irvine16.inc
	;-------------loopE and LoopZ--------------------
	; test opernation just effect the value of the flag
.data
	ms db " ********** Quiz game over 6th semester (CSE) by Ebrahim Joy(DIU) ********** : $" 
	ms1 db "!!!!!! Please Choose Your Course!!!!! : $"
	ms2 db " Please press 'd' for Data Communication : $"
	ms3 db " Please press 'n'  for Numerical methods : $" 
	ms4 db " Please press 'm' for Microprocessor & Assembly Language : $"
	ms5 db " Please press 'b' for Bio-Informatics : $"

	
.code
	main proc
	MOV AX,@DATA
	MOV DS,AX
	MOV AH , 9
	MOV DX OFFSET MS
	INT 21H
	
main endp
end main
