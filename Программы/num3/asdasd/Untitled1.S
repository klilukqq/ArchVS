calc:
  movl 4(%esp), %eax
  imul $-4,%eax
  add $4,%eax
  ret
