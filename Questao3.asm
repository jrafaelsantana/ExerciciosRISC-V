lw x10, v1
lw x11, v2

addi x18, x10, 0

srli x18, x18, 8
slli x18, x18, 24

or x11, x11, x18

v1: .word 0x1234
v2: .word 0xffff
