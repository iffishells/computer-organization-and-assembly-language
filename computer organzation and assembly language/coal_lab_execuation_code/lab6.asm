include irvine32.inc

.data
	 ; lab 6
	 	cover the content
	 	1 : stack
	 	2 : uses operator
	 	3 : pop/push and pushad and popad funtion
	 	4 : procedure (it means thats equal to the funtion in c++ )
	 	5 : create user defined funtion
	 	6 : Global variable and local varibale
	 	
	; most important point : atleat 32 bit and 16 bit to save the value in the stack
	
	; reverse the string through stack
	
	
	
	; pushad and popad
	;pushad store the value at the runtime and when we need these value then we can popad 
	;form the stack and use for our puspose;
	
	
	; 3 = procesure
	; user defind funtion : eip(program counter \register)  = hold add the current instruction
	
	; 4 = labels , tops:
		li:: is global vaible 
		l1: local varibale 
	; 5 = uses operator 
		to define the operator\parameter of the funtion
		save the value in the stack ans work as fully 
		like pushad and popad
		
	; 6 = user defind ffunton(use only  edx and ecx register)
		Readstring take the value edx and store the in the ecx
	;--------------------------------------------------------------------------------------------------------\
	Msg1 BYTE "for 32 - bit registers",0
	
.code
main proc
	; 32 - bit registers 
	mov edx,OFFSET Msg1 
	call WriteString 
	call Crlf 
	 
	XOR EAX,EAX 
	XOR EBX,EBX 
	XOR ECX,ECX 
	XOR EDX,EDX 
	call DumpRegs
	call crlf
	 
	pushad 
	mov eax,12345678h 
	mov ebx,5678h 
	mov ecx,1234h 
	mov edx,1359h 
	call DumpRegs 
	popad 
	 
	call DumpRegs 




exit
main endp
end main