	.8byte				//    PRESERVE8

	.global array_even_flip  // Export symbol

array_even_flip:             // X0 -> input array_ptr
			// X1 -> output array_ptr

/************Begin Implementation here**************/
	sub x15,x20,256
	orr x1,xzr,xzr//i=0
LOOP1:
	sub x10,x1,32//i-32
	cbz x10,END1//if i<32 end
	lsl x11,x1,3//i*8
	lsl x12,x1,3
	add x11,x11,x20//i*8+s[0]
	add x14,x12,x15//i*8+e[0]
	ldur x13,[x11,0]//x13=content of s[i]
	stur x13,[x14,0]//content of s[i] go to e[i]
	add x1,x1,1
	b LOOP1
END1:
	orr x1,xzr,xzr//i=0
LOOP2:
	sub x10,x1,32//i-32
	cbz x10,END2//if i<32 end
	lsl x11,x1,3//i*3
	add x11,x11,x15//e[i]=i*8+e[0]
	ldur x13,[x11,0]//x13=content of e[i]
	orr x2,xzr,xzr
	add x3,x2,1
	sub x4,x2,x3//x4=fffffffffff
	eor x13,x13,x4//flip
	stur x13,[x11,0]//
	add x1,x1,2
	b LOOP2
END2:
/************End Implementation here****************/

// This returns back to C code
	BR x30

