    goto main

    wb 0

    res   ww 3
    sum   ww 0
    tmp   ww 0
    tmp1  ww 0
    itr   ww 1


main add x, res
     mov x, sum
     sub x, itr
     mov x, tmp
     mov x, tmp1
     goto loop

     end halt

    looop add x, res
          sub x, sum
          mov x, res
          sub x, res
          add x, tmp1
          sub x, itr
          mov x, tmp1
          jz x, end
          mov x, tmp
          sub x, tmp
          add x, res
          mov x, sum
          sub x, sum
          add x, tmp

     loop jz x, looop
          sub x, tmp
          add x, sum
          add x, res
          mov x, res
          sub x, res
          add x, tmp
          sub x, itr
          mov x, tmp
          goto loop
