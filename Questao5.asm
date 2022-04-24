add x19, x0, x0
lw x18, vogais

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
vogais: .asciz "aeiou"
imprimir: 
	
	sb x19, 1024(x0)
	halt
