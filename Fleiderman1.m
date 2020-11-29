! Santiago Fleiderman
!Csc 3210
! 09/26/2016
! y = 5x^2+6x+17


! Santiago Fleiderman
!Csc 3210
! 09/26/2016
! y = 5x^2+6x+17


.section ".data"
define(a2, 5)
define(a1, 6)
define(a0, 17)
! X and Y Variables
define(x_r,l0)
define(y_r, l1)

.section ".text"
.global main
main:
save %sp,-96,%sp
mov 3, %x_r ! x =3
mov %x_r,%o0 ! o0 x
mov %x_r,%o1 ! o1 x
call .mul ! x^2% o0=x^2
nop
mov a2, %o1
call .mul ! 5x^2 default o0*o1
nop
mov %o0, %l2
mov a1,%o0 ! results stores here
mov %x_r,%o1
call .mul ! 6x
nop
add %l2,%o0,%o1
add %o1, a0,%y_r
mov 1,%g1
ta 0




