# a - 2
# b - 3
# c - 4
# d - 5
# e - 6
# f - 7
# g - 8

ReadKeyboard:
	addi sp, sp, -16
	addi x28, x0, 0
	addi x11, x0, 0
	
	lb x11, 1025(x0)
	addi x11, x11, -48
	sb x11, 12(sp) 	

	lb x11, 1025(x0)
	addi x11, x11, -48
	sb x11, 8(sp)

	lb x11, 1025(x0)
	addi x11, x11, -48
	sb x11, 4(sp)

	lb x11, 1025(x0)
	addi x11, x11, -48
	sb x11, 0(sp)

	lb x28, 0(sp)
	lb x29, 4(sp)
	lb x30, 8(sp)
	lb x31, 12(sp)
	addi sp, sp, 16

	slli x31, x31, 3
	slli x30, x30, 2
	slli x29, x29, 1

	or x28, x28, x29
	or x28, x28, x30
	or x28, x28, x31
	
	addi x18, x0, 0
	beq x28, x18, Num0
	addi x18, x0, 0b0001
	beq x28, x18, Num1
	addi x18, x0, 0b0010
	beq x28, x18, Num2
	addi x18, x0, 0b0011
	beq x28, x18, Num3
	addi x18, x0, 0b0100
	beq x28, x18, Num4
	addi x18, x0, 0b0101
	beq x28, x18, Num5
	addi x18, x0, 0b0110
	beq x28, x18, Num6
	addi x18, x0, 0b0111
	beq x28, x18, Num7
	addi x18, x0, 0b1000
	beq x28, x18, Num8
	addi x18, x0, 0b1001
	beq x28, x18, Num9
	addi x18, x0, 0b1111
	beq x28, x18, LimpaDisplay
	halt

Num0:
	addi x21, x0, 0b1111111
	addi x22, x0, 0
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num1:
	addi x21, x0, 0b000110
	addi x22, x0, 0
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num2:
	addi x21, x0, 0b011011
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num3:
	addi x21, x0, 0b001111
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num4:
	addi x21, x0, 0b100110
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num5:
	addi x21, x0, 0b101101
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num6:
	addi x21, x0, 0b111101
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num7:
	addi x21, x0, 0b000111
	addi x22, x0, 0
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num8:
	addi x21, x0, 0b1111111
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

Num9:
	addi x21, x0, 0b101111
	addi x22, x0, 1
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

LimpaDisplay:
	addi x21, x0, 0
	addi x22, x0, 0
	sb x21, 1029(x0)
	sb x22, 1027(x0)
	halt

