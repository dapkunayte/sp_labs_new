.data
print_arr:
.string "Array: %d\n"
arr:
.long 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
arr_end:

.text
.global main
.type main, @function

main:
	movl $0, %ecx
	movl $arr, %ebx    /*Array EBX*/
	movl (%ebx), %eax	/*Array[i]*/
start:
        testl $1, %eax /* %eax even check */
	jnz odd   /* odd, jump to Odd */
        jz even /* even, jump to Even */

odd:
	movl (%ebx), %ecx
	jmp next
even:
	addl $1, (%ebx)
	movl (%ebx), %ecx
        jmp next
next:
	push %ecx
	push $print_arr
	call printf
	addl $8, %esp
	addl $4, %ebx /* next element */
	movl (%ebx), %eax /* new element initialization */
	jmp count
count:
	cmpl $arr_end, %ebx
	jne start
	addl $0, %ecx
	addl $0, %eax
	addl $0, %ebx
	ret
