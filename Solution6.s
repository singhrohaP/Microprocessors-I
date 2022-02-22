     1	@ Start of file HexToVal.s
     2	@
     3	@ Copyright 2020 University of Dublin. All Rights Reserved.
     4	@
     5	@ Design and write an ARM assembly language program that
     6	@ will convert an ASCII representation of a hexadecimal
     7	@ value to a value. TestStr is a NULL-terminated string 
     8	@ in memory and the converted value should be stored in 
     9	@ register r0. TestStr will contain a maximum of 8
    10	@ characters and may use both upper and lower case
    11	@ charaters.
    12	
    13	
    14		.text
    15	
    16	start:
    17	
    18	@ Upload the code that goes between the dashed lines.
    19	@ -------------- start cut ------------------------
    20	
    21	LDR	r1,=TestStr
    22		LDR	r8,=#1
    23		LDR	r9,=#16
    24	
    25	
    26		LDR	r6,=TestStr
    27		MOV	r2,#0
    28		
    29		B	l
    30	
    31	l:	LDRB	r3,[r6],#1
    32		CMP	r3,#0
    33		BEQ	l_end
    34		ADD	r2, r2, #1
    35		B	l
    36	l_end:
    37		
    38	
    39		SUB	r2, r2, #1
    40		B	testwl
    41	wh1:	
    42		MOV	r4, #0
    43		SUB		r2, r2, #1
    44	
    45		CMP	r0, #'a'
    46		BCC	endif1
    47		CMP	r0, #'z'
    48		BHI	endif1
    49		SUB	r4, r0, #87
    50		MUL	r4, r8, r4
    51		ADD	r5, r4, r5
    52		MUL	r8, r9, r8
    53		B	testwl
    54	
    55	endif1:
    56		CMP	r0, #'1'
    57		BCC	endif2
    58		CMP	r0, #'9'
    59		BHI	endif2
    60		SUB	r4, r0, #48
    61		MUL	r4, r8, r4
    62		ADD	r5, r4, r5
    63		MUL	r8, r9, r8
    64		B	testwl 
    65	
    66	endif2:
    67		CMP	r0, #'A'
    68		BCC	endif3
    69		CMP	r0, #'Z'
    70		BHI	endif3
    71		SUB	r4, r0, #55
    72		MUL	r4, r8, r4
    73		ADD	r5, r4, r5
    74		MUL	r8, r9, r8
    75		B	testwl
    76	
    77	endif3:
    78		
    79	
    80	testwl:	
    81		LDRB	r0, [r1, r2]
    82		CMP	r0, #0
    83		BNE	wh1
    84	
    85	
    86		MOV	r0, r5
    87	
    88	@ -------------- end cut --------------------------
    89	
    90	stop:   B	stop
    91		.data
    92	TestStr:	.asciz	"123aBc12"
    93		.end
    94	@
    95	@ End of file HexToVal.s
