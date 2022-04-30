# x18 - Verm Esq - 3
# x19 - Amar Esq - 5
# x20 - Amar Dir - 6
# x21 - Verd Esq - 9
# x22 - Verd Dir - 10
# x23 - Verm Dir - 11

loop:	
	lh x12, 1031(x0)
	
	# 0 - 10
	addi x6, x0, 205
	blt x12, x6, VermEsq

	# 10 - 15
	addi x6, x0, 307
	blt x12, x6, AmarEsq

	# 15 - 20
	addi x6, x0, 409
	blt x12, x6, AmarDir

	# 20 - 25
	addi x6, x0, 511
	blt x12, x6, VerdEsq

	# 25 - 30
	addi x6, x0, 	612
	blt x12, x6, VerdDir
	
	# +30
	addi x6, x0, 612
	blt x6, x12, VermDir

VermEsq:
	addi x18, x0, 255
	addi x20, x0, 0
	addi x21, x0, 0
	addi x22, x0, 0
	addi x23, x0, 0
	addi x24, x0, 0
	jal x1, AcendeLeds

AmarEsq:
	addi x18, x0, 0
	addi x20, x0, 255
	addi x21, x0, 0
	addi x22, x0, 0
	addi x23, x0, 0
	addi x24, x0, 0
	jal x1, AcendeLeds

AmarDir:
	addi x18, x0, 0
	addi x20, x0, 0
	addi x21, x0, 255
	addi x22, x0, 0
	addi x23, x0, 0
	addi x24, x0, 0
	jal x1, AcendeLeds

VerdEsq:
	addi x18, x0, 0
	addi x20, x0, 0
	addi x21, x0, 0
	addi x22, x0, 255
	addi x23, x0, 0
	addi x24, x0, 0
	jal x1, AcendeLeds

VerdDir:
	addi x18, x0, 0
	addi x20, x0, 0
	addi x21, x0, 0
	addi x22, x0, 0
	addi x23, x0, 255
	addi x24, x0, 0
	jal x1, AcendeLeds

VermDir:
	addi x18, x0, 0
	addi x20, x0, 0
	addi x21, x0, 0
	addi x22, x0, 0
	addi x23, x0, 0
	addi x24, x0, 255
	jal x1, AcendeLeds

AcendeLeds:
	addi x10, x0, 3
	sb x10, 1033(x0)
	sb x18, 1034(x0)
	addi x10, x0, 5
	sb x10, 1033(x0)
	sb x20, 1034(x0)
	addi x10, x0, 6
	sb x10, 1033(x0)
	sb x21, 1034(x0)
	addi x10, x0, 9
	sb x10, 1033(x0)
	sb x22, 1034(x0)
	addi x10, x0, 10
	sb x10, 1033(x0)
	sb x23, 1034(x0)
	addi x10, x0, 11
	sb x10, 1033(x0)
	sb x24, 1034(x0)
	jal x1, loop
