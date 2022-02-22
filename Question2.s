@ Start of file AsciiConversion.s
@
@ Copyright 2020 University of Dublin. All Rights Reserved.
@
@ A sequence of seven ASCII symbols, each in the range '0' . . . '9', can 
@ represent an unsigned value in the range 0 . . . 9,999,999 in text form. 
@ 
@ Design and write an ARM assembly language program that will convert such 
@ a sequence to the value represented by the symbols. 
@ 
@ Assume that the seven byte-size ASCII symbols will be stored in R1 to R7, 
@ with the most significant digit stored in R7. 
@ 
@ Store the result of the conversion in R0.
@ 
@ For example, given the following sequence of ASCII symbols
@         '1', '0', '3', '4', '2', '7', '9'
@ your program should store the value 1,034,279 (0x000FC827) in R0.
@ 


	.text

start:

	LDR	R7, ='1'
	LDR	R6, ='0'
	LDR	R5, ='3'
	LDR	R4, ='4'
	LDR	R3, ='2'
	LDR	R2, ='7'
	LDR	R1, ='9'


@ Upload the code that goes between the dashed lines.
@ -------------- start cut ------------------------


@ -------------- end cut --------------------------

stop:   B	stop
	.data
	.end
@
@ End of file AsciiConversion.s
