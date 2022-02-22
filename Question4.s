@ Start of file Hamming.s
@
@ Copyright 2020 University of Dublin. All Rights Reserved.
@
@ Design and write an assembly language program that 
@ generates a 12-bit Hamming Code in R0 from an 8-bit value in R1.
@ 


	.text

start:

	LDR	r1, =0xAC


@ Upload the code that goes between the dashed lines.
@ -------------- start cut ------------------------


@ -------------- end cut --------------------------

stop:   B	stop
	.data
	.end
@
@ End of file Hamming.s
