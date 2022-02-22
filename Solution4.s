AND	  R2, R1, #0x1		
MOV	  R0, R2, LSL #2		

AND	  R2, R1, #0xE		
ORR	  R0, R0, R2, LSL #3

AND	  R2, R1, #0xF0		
ORR	  R0, R0, R2, LSL #4	
		
		
EOR	  R2, R0, R0, LSR #2	
EOR   R2, R2, R2, LSR #4	
EOR	  R2, R2, R2, LSR #8

AND	  R2, R2, #0x1		
ORR	  R0, R0, R2		


EOR		R2, R0, R0, LSR #1
EOR		R2, R2, R2, LSR #4	
EOR		R2, R2, R2, LSR #8

AND   R2, R2, #0x2		
ORR		R0, R0, R2		


EOR		R2, R0, R0, LSR #1	
EOR		R2, R2, R2, LSR #2
EOR		R2, R2, R2, LSR #8	

AND	  R2, R2, #0x8		
ORR		R0, R0, R2		
	
EOR		R2, R0, R0, LSR #1	
EOR		R2, R2, R2, LSR #2	
EOR		R2, R2, R2, LSR #4	

AND	  R2, R2, #0x80		
ORR		R0, R0, R2
