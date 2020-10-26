.global _fun
_fun:
    movl 4(%esp), %eax

    shr %eax
    add $1,%eax


ret
