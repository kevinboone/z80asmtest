;------------------------------------------------------------------------
; 
;  CP/M - Z80 assembler; multi-unit assembly with Macro80 and Link80   
;
;  Copyright (c)2021 Kevin Boone, GPL v3.0
;
;------------------------------------------------------------------------

	.Z80

	ORG    0100H

	include conio.inc

;------------------------------------------------------------------------
;  Start here 
;------------------------------------------------------------------------
main:
	; Print the message 
	LD	HL, message 
	CALL	puts
	CALL	newline

	LD 	HL, 0fd21h
	CALL	puth16
	CALL	newline

	CALL	exit

;------------------------------------------------------------------------
; Data 
;------------------------------------------------------------------------
message: 	
	db "Hello, World"
        db 0

end 
