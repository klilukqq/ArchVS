
.data
printf_format:
        .string "%d\n"
a:
        .int 8
b:
        .int 7
c:
        .int 6
x:
        .int 0
y:
        .int 0

_calc:

        movl a, %eax
        movl %eax, x

        movl b, %eax
        imul c, %eax

        add %eax, x


        movl a, %eax
        movl %eax, y

        movl b, %eax
        imul c, %eax


        sub %eax, y

        ret
.globl _main
_main:

        call  _calc

        movl x, %eax
        pushl %eax
        pushl $printf_format
        call  _printf

        addl  $8, %esp
        movl  $0, %eax

        movl y, %eax
        pushl %eax
        pushl $printf_format
        call  _printf

        addl  $8, %esp
        movl  $0, %eax

        ret
