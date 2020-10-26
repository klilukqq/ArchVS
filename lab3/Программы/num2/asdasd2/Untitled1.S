
.data
str: .string "13*8 + 5 = %d\n"
x: .int 13
.global _main
_main:
movl x, %eax
shl $0x3,%eax
add $0x5,%eax
pushl %eax
pushl $str
call _printf
addl $2*4, %esp
xor %eax, %eax
ret

