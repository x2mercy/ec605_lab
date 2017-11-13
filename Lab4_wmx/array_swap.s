    .8byte    
    .global array_swap    // Export symbol

array_swap:           // X0 -> first parameter

/************Begin Implementation here**************/
	sub x20,x0,256
	orr x1,xzr,xzr//i=0
//	add x1,x1,0//i=1
LOOP:
	sub x10,x1,32//i-32
	cbz x10,END//if(i<32)end
	lsl x11,x1,3//i*8
	lsl x15,x1,3
	add x11,x11,x0//x11=addr(A[i])
	add x13,x15,x20//x13=addr(s[i])
	ldur x12,[x11,0]//x12=content of A[i]
	ldur x14,[x11,8]//x14=content of A[i+1]
	stur x14,[x13,0]//content of A[i+1]go to s[i]
	stur x12,[x13,8]//content of A[i] go to s[i+1]
	add x1,x1,2//i+2
	b LOOP

END:
/************End Implementation here****************/

// This returns back to C code
    BR x30

