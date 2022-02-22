@ Start of file Hamming2.s
@
@ Copyright 2020 University of Dublin. All Rights Reserved.
@
@ Design and write an assembly language program that will detect and correct single 
@ bit errors in a 12-bit Hamming Code in R0. Your program should begin by clearing 
@ and then re-calculating the check bits using the same assembly language program 
@ that was used to generate the original Hamming Code. Your program should then 
@ compare the original and re-calculated values and should finally correct any 
@ single bit error and store the correct 8 bit number in R0.
@ 


	.text

start:

	LDR	r0, =0xb6b


@ Upload the code that goes between the dashed lines.
@ -------------- start cut ------------------------


@ -------------- end cut --------------------------

stop:   B	stop
	.data
	.end
@
@ End of file Hamming2.s
