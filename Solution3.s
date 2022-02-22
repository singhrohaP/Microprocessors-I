LDR r10, =0x1
AND r1, r0, r12
LDR r10, =0x2
AND r2, r0, r10
LSR r2, #1
LDR r10, =0x4
AND r3, r0, r10
LSR r3, #2
LDR r10, =0x8
AND r4, r0, r10
LSR r4, #3
LDR r10, =0x10
AND r5, r0, r10
LSR r5, #4
LDR r10, =0x20
AND r6, r0, r10
LSR r6, #5
LDR r10, =0x40
AND r7, r0, r10
LSR r7, #6
eor r1, r1, r2
eor r1, r1, r3
eor r1, r1, r4
eor r1, r1, r5
eor r1, r1, r6
eor r1, r1, r7
LSL r1, #7
ORR r0, r0, r1
