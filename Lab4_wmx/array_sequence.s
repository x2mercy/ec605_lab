	.8byte				//    PRESERVE8

	.global array_sequence	// Export symbol

array_sequence:           // X0 -> first parameter

/************Begin Implementation here**************/
	add x1,xzr,xzr//x1=0
//	add x3,x2,1//x3=1
	stur xzr,[x0,0]//A[0]=0
	add x1,x1,1//i=1
//	add x4,x0,8//x4=&A+8
	stur x1,[x0,8]//A[1]=1
	add x2,x1,1//i=2
LOOP:
	sub x10,x2,32//i-32
	cbz x10,END//if(i==32) goto END
	lsl x11,x2,3
	add x1,x1,3
	add x11,x11,x0
	stur x1,[x11,0]
	add x2,x2,1//i++
	b LOOP


/************End Implementation here****************/
END:
// This returns back to C code
	 BR x30
