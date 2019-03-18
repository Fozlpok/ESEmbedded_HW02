.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	//set
	mov r0, #001
	mov r1, #002
	mov r2, #003
	
	push {r0}
	push {r1}
	push {r2}

	pop {r3}
	pop {r4}
	pop {r5}
 
	mov r3, #004
	mov r4, #005 
	mov r5, #006 
	
	push {r0,r1,r2}	
	pop {r3,r4,r5}

	mov r3, #004 
	mov r4, #005 
	mov r5, #006 
	
	push {r2,r1,r0}
	pop {r5,r4,r3}

	b	.
