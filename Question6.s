@ Start of file HexToVal.s
@
@ Copyright 2020 University of Dublin. All Rights Reserved.
@
@ Design and write an ARM assembly language program that
@ will convert an ASCII representation of a hexadecimal
@ value to a value. TestStr is a NULL-terminated string 
@ in memory and the converted value should be stored in 
@ register r0. TestStr will contain a maximum of 8
@ characters and may use both upper and lower case
@ charaters.


	.text

start:

@ Upload the code that goes between the dashed lines.
@ -------------- start cut ------------------------


@ -------------- end cut --------------------------

stop:   B	stop
	.data
TestStr:	.asciz	"123aBc12"
	.end
@
@ End of file HexToVal.s
