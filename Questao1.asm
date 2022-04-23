addi x18, x0, 5
addi x19, x0, 9
add x20, x0, x18

bne x19, x20, else
sub x20, x19, x18

else: 
sub x20, x18, x19
halt
