@ exit.S: exit syscall wrapper
@
@ Authors: Alvin Zheng <dongxuez@andrew.cmu.edu>
@          Minghao Wang <minghaow@andrew.cmu.edu>
@          Yining Yang <yiningy@andrew.cmu.edu>
@ Date:    2013/10/13  3:37pm

#include <bits/swi.h>

	.file	"exit.S"
	.text

	.global	exit
exit:
	swi	EXIT_SWI
