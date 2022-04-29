add x18, x0, x0						#Resultado Final
add x10, x0, x0						#Numero Atual

Read:
	lb x29, 1025(x0)
	beq x29, x0, End
	addi x10, x29, -48
	jal x1, Fatorial
	add x18, x18, x10

	lb x29, 1025(x0)
	beq x29, x0, End
	addi x10, x29, -48
	jal x1, Fatorial
	add x18, x18, x10

	lb x29, 1025(x0)
	beq x29, x0, End
	addi x10, x29, -48
	jal x1, Fatorial
	add x18, x18, x10

	lb x29, 1025(x0)
	beq x29, x0, End
	addi x10, x29, -48
	jal x1, Fatorial
	add x18, x18, x10

	lb x29, 1025(x0)
	beq x29, x0, End
	addi x10, x29, -48
	jal x1, Fatorial
	add x18, x18, x10

	lb x29, 1025(x0)
	beq x29, x0, End
	addi x10, x29, -48
	jal x1, Fatorial
	add x18, x18, x10
		
End: halt	
	
Fatorial:
	addi sp, sp, -16
	sw x1, 8(sp)
	sw x10, 0(sp)
	addi x5, x10, -1
	bge x5, x0, L1
	addi x10, x0, 1
	addi sp, sp, 16
	jalr x0, 0(x1)
L1:
	addi x10, x10, -1
	jal x1, Fatorial
	addi x6, x10, 0
	lw x10, 0(sp)
	lw x1, 8(sp)
	addi sp, sp, 16
    jal x5, Multiplicar
    jalr x0, 0(x1)

Multiplicar:
	add x25, x0, x10
	add x26, x0, x0

	MultLoop:
		beq x25, x0, MultEnd
		add x26, x26, x6
		addi x25, x25, -1
		beq x0, x0, MultLoop

	MultEnd:
		addi x10, x26, 0 
		jalr x0, 0(x5)
