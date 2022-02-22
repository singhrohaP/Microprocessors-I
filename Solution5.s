     1	@ Start of file Hamming2.s
     2	@
     3	@ Copyright 2020 University of Dublin. All Rights Reserved.
     4	@
     5	@ Design and write an assembly language program that will detect and correct single 
     6	@ bit errors in a 12-bit Hamming Code in R0. Your program should begin by clearing 
     7	@ and then re-calculating the check bits using the same assembly language program 
     8	@ that was used to generate the original Hamming Code. Your program should then 
     9	@ compare the original and re-calculated values and should finally correct any 
    10	@ single bit error and store the correct 8 bit number in R0.
    11	@ 
    12	
    13	
    14		.text
    15	
    16	start:
    17	
    18		LDR	r0, =0xb6b
    19	
    20	
    21	@ Upload the code that goes between the dashed lines.
    22	@ -------------- start cut ------------------------
    23	
    24			
    25		
    26		mov r12,#0x4
    27		AND r11,r0,r12
    28		mov r1,r11,LSR #2		
    29		mov r12,#0x10
    30		AND r11,r0,r12
    31		mov r2,r11,LSR #4
    32		mov r12,#0x20
    33		AND r11,r0,r12
    34		mov r3,r11,LSR #5
    35		mov r12,#0x40
    36		AND r11,r0,r12
    37		mov r4,r11,LSR #6
    38		mov r12,#0x100
    39		AND r11,r0,r12
    40		mov r5,r11,LSR #8
    41		mov r12,#0x200
    42		AND r11,r0,r12
    43		mov r6,r11,LSR #9
    44		mov r12,#0x400
    45		AND r11,r0,r12
    46		mov r7,r11,LSR #10
    47		mov r12,#0x800
    48		AND r11,r0,r12
    49		mov r8,r11,LSR #11
    50		
    51		eor r9,r1,r2
    52		eor r9,r9,r4
    53		eor r9,r9,r5
    54		eor r9,r9,r7
    55	
    56		eor r10,r1,r3
    57		eor r10,r10,r4
    58		eor r10,r10,r6
    59		eor r10,r10,r7
    60		
    61		eor r11,r2,r3
    62		eor r11,r11,r4
    63		eor r11,r11,r8
    64		
    65		eor r12,r5,r6
    66		eor r12,r12,r7
    67		eor r12,r12,r8
    68	
    69		mov r8,#0x1
    70		AND r7,r0,r8
    71		mov r1,r7
    72		mov r8,#0x2
    73		AND r7,r0,r8
    74		mov r2,r7,LSR #1
    75		mov r8,#0x8
    76		AND r7,r0,r8
    77		mov r3,r7,LSR #3
    78		mov r8,#0x80
    79		AND r7,r0,r8
    80		mov r4,r7,LSR #7
    81		
    82		mov r6,#0x1
    83		mov r5,#0x0
    84		mov r8,#0x0
    85		CMP r1,r9
    86		BNE if1
    87		BEQ l1
    88	l1:
    89		CMP r2,r10
    90		BNE	if2
    91		BEQ l2
    92	l2:
    93		CMP r3,r11
    94		BNE if3
    95		BEQ l3
    96	l3:	
    97		CMP r4,r12
    98		BNE if4
    99		B rets
   100	if1:
   101		ADD r5,r5,#0x1
   102		B l1
   103	if2:
   104		ADD r5,r5,#0x2
   105		B l2
   106	if3:
   107		ADD r5,r5,#0x4
   108		B l3
   109	if4:	
   110		ADD r5,r5,#0x8
   111		B rets
   112	rets:
   113		SUB r5,r5,#0x1
   114		LSL r7,r6,r5
   115		eor r0,r0,r7
   116		
   117		mov r12,#0x4
   118		AND r11,r0,r12
   119		mov r1,r11,LSR #2		
   120		mov r12,#0x10
   121		AND r11,r0,r12
   122		mov r2,r11,LSR #3
   123		mov r12,#0x20
   124		AND r11,r0,r12
   125		mov r3,r11,LSR #3
   126		mov r12,#0x40
   127		AND r11,r0,r12
   128		mov r4,r11,LSR #3
   129		MOV r12,#0x100
   130		AND r11,r0,r12
   131		MOV r5,r11,LSR #4
   132		MOV r12,#0x200
   133		AND r11,r0,r12
   134		MOV r6,r11,LSR #4
   135		MOV r12,#0x400
   136		AND r11,r0,r12
   137		MOV r7,r11,LSR #4
   138		MOV r12,#0x800
   139		AND r11,r0,r12
   140		MOV r8,r11,LSR #4
   141		
   142		MOV r0,#0x0
   143		ORR r0,r1,r2
   144		ORR r0,r0,r3
   145		ORR r0,r0,r4
   146		ORR r0,r0,r5
   147		ORR r0,r0,r6
   148		ORR r0,r0,r7
   149		ORR r0,r0,r8
   150	
   151	@ -------------- end cut --------------------------
   152	
   153	stop:   B	stop
   154		.data
   155		.end
   156	@
   157	@ End of file Hamming2.s
