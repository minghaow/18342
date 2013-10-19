@ crt0.S: Execution startup routine
@
@ Authors: Alvin Zheng <dongxuez@andrew.cmu.edu>
@          Minghao Wang <minghaow@andrew.cmu.edu>
@          Yining Yang <yiningy@andrew.cmu.edu>
@ Date:    2013/10/13  3:37pm

#include <bits/swi.h>

	.file	"ctr0.S"
	.text

	.global	_start
_start:
	ldr	r0, [sp], #4
	mov	r1, sp
	bl	main
	swi	EXIT_SWI
