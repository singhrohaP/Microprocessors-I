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
    18		LDR	r0, =0x852
    19	
    20	
    21	@ Upload the code that goes between the dashed lines.
    22	@ -------------- start cut ------------------------
    23	
    24		LDR	r0, =0xb6b
    25		LDR	r0, =0xaeb		
    26		
    27		mov r12,#0x4
    28		AND r11,r0,r12
    29		mov r1,r11,LSR #2		
    30		mov r12,#0x10
    31		AND r11,r0,r12
    32		mov r2,r11,LSR #4
    33		mov r12,#0x20
    34		AND r11,r0,r12
    35		mov r3,r11,LSR #5
    36		mov r12,#0x40
    37		AND r11,r0,r12
    38		mov r4,r11,LSR #6
    39		mov r12,#0x100
    40		AND r11,r0,r12
    41		mov r5,r11,LSR #8
    42		mov r12,#0x200
    43		AND r11,r0,r12
    44		mov r6,r11,LSR #9
    45		mov r12,#0x400
    46		AND r11,r0,r12
    47		mov r7,r11,LSR #10
    48		mov r12,#0x800
    49		AND r11,r0,r12
    50		mov r8,r11,LSR #11
    51		
    52		eor r9,r1,r2
    53		eor r9,r9,r4
    54		eor r9,r9,r5
    55		eor r9,r9,r7
    56	
    57		eor r10,r1,r3
    58		eor r10,r10,r4
    59		eor r10,r10,r6
    60		eor r10,r10,r7
    61		
    62		eor r11,r2,r3
    63		eor r11,r11,r4
    64		eor r11,r11,r8
    65		
    66		eor r12,r5,r6
    67		eor r12,r12,r7
    68		eor r12,r12,r8
    69	
    70		mov r8,#0x1
    71		AND r7,r0,r8
    72		mov r1,r7
    73		mov r8,#0x2
    74		AND r7,r0,r8
    75		mov r2,r7,LSR #1
    76		mov r8,#0x8
    77		AND r7,r0,r8
    78		mov r3,r7,LSR #3
    79		mov r8,#0x80
    80		AND r7,r0,r8
    81		mov r4,r7,LSR #7
    82		
    83		mov r6,#0x1
    84		mov r5,#0x0
    85		mov r8,#0x0
    86		CMP r1,r9
    87		BNE if1
    88		BEQ l1
    89	l1:
    90		CMP r2,r10
    91		BNE	if2
    92		BEQ l2
    93	l2:
    94		CMP r3,r11
    95		BNE if3
    96		BEQ l3
    97	l3:	
    98		CMP r4,r12
    99		BNE if4
   100		B rets
   101	if1:
   102		ADD r5,r5,#0x1
   103		B l1
   104	if2:
   105		ADD r5,r5,#0x2
   106		B l2
   107	if3:
   108		ADD r5,r5,#0x4
   109		B l3
   110	if4:	
   111		ADD r5,r5,#0x8
   112		B rets
   113	rets:
   114		SUB r5,r5,#0x1
   115		LSL r7,r6,r5
   116		eor r0,r0,r7
   117		
   118		mov r12,#0x4
   119		AND r11,r0,r12
   120		mov r1,r11,LSR #2		
   121		mov r12,#0x10
   122		AND r11,r0,r12
   123		mov r2,r11,LSR #3
   124		mov r12,#0x20
   125		AND r11,r0,r12
   126		mov r3,r11,LSR #3
   127		mov r12,#0x40
   128		AND r11,r0,r12
   129		mov r4,r11,LSR #3
   130		mov r12,#0x100
   131		AND r11,r0,r12
   132		mov r5,r11,LSR #4
   133		mov r12,#0x200
   134		AND r11,r0,r12
   135		mov r6,r11,LSR #4
   136		mov r12,#0x400
   137		AND r11,r0,r12
   138		mov r7,r11,LSR #4
   139		mov r12,#0x800
   140		AND r11,r0,r12
   141		mov r8,r11,LSR #4
   142		
   143		mov r0,#0x0
   144		ORR r0,r1,r2
   145		ORR r0,r0,r3
   146		ORR r0,r0,r4
   147		ORR r0,r0,r5
   148		ORR r0,r0,r6
   149		ORR r0,r0,r7
   150		ORR r0,r0,r8
   151	
   152	@ -------------- end cut --------------------------
   153	
   154	stop:   B	stop
   155		.data
   156		.end
   157	@
   158	@ End of file Hamming2.s
