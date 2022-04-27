add x18, x0, x0						#Resultado
addi x19, x0, 2						#Numero
addi x11, x0, 

Loop:
	lb x10, 1025(x0)
	
Fatorial:
	addi sp, sp, -16
	sb x1, 8(sp)
	sb x10, 0(sp)
	addi x5, x10, -1
	bge x5, x0, L1
	addi x10, x0, 1
	addi sp, sp, 16
	jalr x0, 0(x1)
L1:
	addi x10, x10, -1
	jal x1, Fatorial
	addi x6, x10, 0
	lb x10, 0(sp)
	lb x1, 8(sp)
	addi sp, sp, 16
	muldiv x10, x10, 
	

