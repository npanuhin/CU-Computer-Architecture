// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

@counter   
M=0
@R2
M=0

(LOOP_START)
    @counter
    D=M
    @R1
    D=D-M
    @LOOP_END
    D;JGE

    @R2
    D=M
    @R0
    D=D+M
    @R2
    M=D

    @counter
    M=M+1
    @LOOP_START
    0;JMP
(LOOP_END)

@LOOP_END
0;JMP