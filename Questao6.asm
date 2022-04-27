addi x18, x0, 0							#Jogador1
addi x19, x0, 0							#Jogador2
lw x28, TeclaEnter
lw x29, EspacoVazio

jal x1, CalculaPontuacao
add x18, x0, x20

jal x1, CalculaPontuacao
add x19, x0, x20

halt

CalculaPontuacao:
	add x20, x0, x0
	Loop:
		lb x10, 1025(x0)
		beq x10, x28, Exit              #Enter
		beq x10, x29, Exit              #Espaco
		
		addi x21, x0, 65                #A
        beq x21, x10, Pont1
        addi x21, x0, 69                #E
        beq x21, x10, Pont1
        addi x21, x0, 73                #I
        beq x21, x10, Pont1
        addi x21, x0, 79                #O
        beq x21, x10, Pont1
        addi x21, x0, 85                #U
        beq x21, x10, Pont1

        addi x21, x0, 68                #D
        beq x21, x10, Pont2
        addi x21, x0, 71                #G
        beq x21, x10, Pont2
        addi x21, x0, 84                #T
        beq x21, x10, Pont2

        addi x21, x0, 66                #B
        beq x21, x10, Pont3
        addi x21, x0, 67                #C
        beq x21, x10, Pont3
        addi x21, x0, 77                #M
        beq x21, x10, Pont3
        addi x21, x0, 78                #N
        beq x21, x10, Pont3
        addi x21, x0, 80                #P
        beq x21, x10, Pont3

        addi x21, x0, 70                #F
        beq x21, x10, Pont4
        addi x21, x0, 72                #H
        beq x21, x10, Pont4
        addi x21, x0, 86                #V
        beq x21, x10, Pont4
        addi x21, x0, 87                #W
        beq x21, x10, Pont4
        addi x21, x0, 89                #Y
        beq x21, x10, Pont4

        addi x21, x0, 75                #K
        beq x21, x10, Pont5
        addi x21, x0, 82                #R
        beq x21, x10, Pont5
        addi x21, x0, 83                #S
        beq x21, x10, Pont5

        addi x21, x0, 74                #J
        beq x21, x10, Pont8
        addi x21, x0, 76                #L
        beq x21, x10, Pont8
        addi x21, x0, 88                #X
        beq x21, x10, Pont8

        addi x21, x0, 81                #Q
        beq x21, x10, Pont10
        addi x21, x0, 90                #Z
        beq x21, x10, Pont10

		jal x11, Loop
	Exit:
		jalr x0, 0(ra)
Pont1:
	addi x20, x20, 1
	jal x2, Loop
Pont2:
	addi x20, x20, 2
	jal x2, Loop
Pont3:
	addi x20, x20, 3
	jal x2, Loop
Pont4:
	addi x20, x20, 4
	jal x2, Loop
Pont5:
	addi x20, x20, 5
	jal x2, Loop
Pont8:
	addi x20, x20, 8
	jal x2, Loop
Pont10:
	addi x20, x20, 10
	jal x2, Loop
TeclaEnter:
	.word 0xd
EspacoVazio:
	.word 0x0
