; ===== Counting ===================================


	MOV	BL,1	; Initial value stored in BL
	MOV 	CL,5	; Decrement from 5

Rep:			; Jump back to this label
	MUL	BL,CL	; Multiply in each loop
	DEC	CL	; Dec ONE from CL
	JNZ	Rep	; Jump back to Rep
	
	MOV	AL,8A   ; Store 10001010 in AL
	OUT 	02	; Send AL to port 2
	MOV 	AL,FF	; Store 11111111 in AL
	OUT	02	; Send AL to port 2
	END		; Program Ends

; ===== Program Ends ===============================
