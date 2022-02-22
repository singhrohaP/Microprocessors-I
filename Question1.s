@ Start of file Arithmetic1.s
@
@ Copyright 2020 University of Dublin. All Rights Reserved.
@
@ Write an arm program to evaluate 4 * x * x + 3 * x
@ assume x is in r1 and store result in r0
@ 


	.text

start:

        MOV     r1, #0x8 


@ Upload the code that goes between the dashed lines.
@ -------------- start cut ------------------------


@ -------------- end cut --------------------------

stop:   B	stop
	.data
	.end
@
@ End of file Arithmetic1.s
