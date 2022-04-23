addi x18, x0, 10
addi x19, x0, 15
addi x20, x0, 26
addi x21, x0, 0

addi x22, x0, 32
addi x23, x0, 25

bge x18, x0, L1
halt

L1: bge x22, x19, L2
	halt
L2: blt x23, x20, L3
	halt
L3: addi x21, x0, 1
	halt
