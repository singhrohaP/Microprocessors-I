@ Start of file Parity.s
@
@ Copyright 2020 University of Dublin. All Rights Reserved.
@
@ Design and write an assembly language program that 
@ will calculate the parity bit for a 7 bit value stored in r0. 
@ 
@ The program should then store the computed parity bit 
@ in bit 7 of r0. Assume even parity.
@ 
@ Using even parity, the parity bit of a value is set such that the 
@ number of set bits (1's) in a value is always even.
@ 


	.text

start:

	LDR	r0, =0x16


@ Upload the code that goes between the dashed lines.
@ -------------- start cut ------------------------


@ -------------- end cut --------------------------

stop:   B	stop
	.data
	.end
@
@ End of file Parity.s
