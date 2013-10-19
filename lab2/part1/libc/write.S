@ write.S: write syscall wrapper
@
@ Authors: Alvin Zheng <dongxuez@andrew.cmu.edu>
@          Minghao Wang <minghaow@andrew.cmu.edu>
@          Yining Yang <yiningy@andrew.cmu.edu>
@ Date:    2013/10/13  3:37pm

#include <bits/swi.h>

	.file	"write.S"
	.text

	.global	write
write:
	stmfd	sp!, {r1-r12, lr}
	add	sp, sp, #52
	ldmfd	sp, {r4-r6}
	swi	WRITE_SWI
	ldr	r1, =errno
	rsbs	r2, r0, #0
	strgt	r2, [r1]
	movgt	r0, #-1
	sub	sp, sp, #52
	ldmfd	sp!, {r1-r12, lr}
	mov	pc, lr
