; ======================================================
; ===== 99sevseg.asm ===================================
; ===== Seven Segment Displays Port 02 =================
Start:
	MOV	AL,8A	; (210175) 10001010
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,DD	; 1101 1101
	OUT	02	; Send the data in AL to Port 02
	
	JMP	Start
	
	END
; ======================================================