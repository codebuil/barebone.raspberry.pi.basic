public sub KERNEL_MAIN()
dim pt as byte ptr
dim add as long 
dim n as long
add=&h04100000
pt=cptr(byte Ptr,&h04100000)
for n=0 to 307200
	pt[n*2]=63
next
end sub
KERNEL_MAIN

