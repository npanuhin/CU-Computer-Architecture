@R0
D=M
@R1
D=D-M
@ITSR0
D;JGT
@R1
D=M
@OUTPUT_D
0;JMP
(ITSR0)
@R0
D=M
(OUTPUT_D)
@R2
M=D
(END)
@END
0;JMP