
;------ The Main Program ----------------------------------------
Start:
	OUT    	01 	; 
	MOV	BL,A	; To get a delay of 10 cycles
	MOV     AL,84   ; RED AND GREEN(10000100)
	OUT     01      ; Send AL to port One
	CALL	36	; Call the procedure at address [36]

	MOV	BL,1	; To get a delay of 1 cycle
	MOV	AL,48	; Yellow and Yellow(01001000)
	OUT 	01 	; Send AL to port One
	CALL	36	; Call the procedure at address [36]

	MOV	BL,5	; To get a delay of 5 cycle.
	MOV 	AL,30	; Green and Red(00110000)
	OUT 	01	; Send AL to port One
	CALL	36	; Call the procedure at address [36]

JMP	Start	; Jump back to the start.

; ----- Time Delay Procedure Stored At Address [36] -------------
	ORG	36	; Generate machine code from address [36]

	PUSH	BL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	BL	; Subtract one from AL.
	JNZ	REP	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	BL	; Restore AL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END
; ---------------------------------------------------------------


