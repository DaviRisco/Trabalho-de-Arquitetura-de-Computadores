goto main
wb 0

s    ww 0
d    ww 2
b    ww 1
a    ww 1
c    ww 1
aux  ww 0
num  ww 8

main add x, num
  sub x, d
  mov x, num
  sub x, num
  add x, c
  goto loop

  hltb add x, b
    mov x, s
    halt

  hlta add x, a
    mov x, s
    halt

  loop add x, a
    mov x, a
    sub x, a
    add x, num
    sub x, c
    mov x, num
    jz x, hlta
    mov x, aux
    sub x, aux
    add x, a
    add x, b
    mov x, b
    sub x, b
    add x, num
    sub x, c
    mov x, num
    jz x, hltb
    mov x, aux
    sub x, aux
    add x, b
    goto loop         