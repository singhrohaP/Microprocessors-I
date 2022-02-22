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

	mul r2, r1, r1
        mov r5, #0x4
	mul r3, r2, r5
	mov r6, #0x3
	mul r4, r6, r1
	add r0, r3, r4
@ -------------- end cut --------------------------

stop:   B	stop
.data
.end
@
@ End of file Arithmetic1.s
