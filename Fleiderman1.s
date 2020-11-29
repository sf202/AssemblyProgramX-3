! Santiago Fleiderman
!Csc 3210
! 09/26/2016
! y = 5x^2+6x+17


! Santiago Fleiderman
!Csc 3210
! 09/26/2016
! y = 5x^2+6x+17


.section ".data"



! X and Y Variables



.section ".text"
.global main
main:
save %sp,-96,%sp
mov 3, %l0 ! x =3
mov %l0,%o0 ! o0 x
mov %l0,%o1 ! o1 x
call .mul ! x^2% o0=x^2
nop
mov 5, %o1
call .mul ! 5x^2 default o0*o1
nop
mov %o0, %l2
mov 6,%o0 ! results stores here
mov %l0,%o1
call .mul ! 6x
nop
add %l2,%o0,%o1
add %o1, 17,%l1
mov 1,%g1
ta 0




