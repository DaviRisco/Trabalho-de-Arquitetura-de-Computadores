goto main
wb 0

aux ww 0
exp ww 1
res ww 0
doi ww 2
rnz ww 1
uma ww 1
log ww 1027

main add x, log
  goto anpb

  ipvpn add x, res
    sub x, uma
    mov x, res
    sub x, res
    add x, doi
    mov x, aux
    goto vpn

  vpn lst x, aux
    mov x, aux
    sub x, aux
    add x, res
    sub x, uma
    mov x, res
    jz x, vpl
    mov x, rnz
    sub x, rnz
    add x, aux
    mov x, aux
    goto vpn

  vpl add x, aux
    mov x, log
    goto loop

  hlt add x, exp
    sub x, uma
    mov x, aux
    halt

  anpb rst x, log
    mov x, log
    sub x, log
    add x, res
    add x, uma
    mov x, res
    sub x, res
    add x, log
    jz x, ipvpn
    goto anpb

  loop lst x, doi
    mov x, doi
    mov x, res
    sub x, res
    add x, exp
    add x, uma
    mov x, exp
    sub x, exp
    add x, log
    sub x, res 
    jz x, hlt
    mov x, rnz
    sub x, rnz
    add x, res
    goto loop