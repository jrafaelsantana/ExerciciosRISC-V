add x19, x0, x0

loop:
lb x10, 1025(x0)

addi x20, x0, 97
beq x10, x20, contavogal
addi x20, x0, 101
beq x10, x20, contavogal
addi x20, x0, 105
beq x10, x20, contavogal
addi x20, x0, 111
beq x10, x20, contavogal
addi x20, x0, 117
beq x10, x20, contavogal

beq x10, x0, imprimir

jal x11, loop

contavogal: 
	addi x19, x19, 1
	jal x11, loop
imprimir: 
	addi x19, x19, 48
	sb x19, 1024(x0)
	halt

