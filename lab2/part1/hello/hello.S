@ hello.S: Hello world! in assembly
@
@ Authors: Alvin Zheng <dongxuez@andrew.cmu.edu>
@          Minghao Wang <minghaow@andrew.cmu.edu>
@          Yining Yang <yiningy@andrew.cmu.edu>
@ Date:    2013/10/13  3:37pm

#include <bits/swi.h>
#include <bits/fileno.h>

	.file	"hello.S"
	.text

	.global	_start
_start:
	stmfd	sp!, {r1-r12, lr}
	mov	r0, #STDOUT_FILENO
	adr	r1, hello_str
	mov	r2, #hello_size
	swi	WRITE_SWI
	ldmfd	sp!, {r1-r12, lr}
	mov	r0, #0
	swi	EXIT_SWI

hello_str:
	.ascii	"Hello world!\n"
	.set	hello_size, .-hello_str
