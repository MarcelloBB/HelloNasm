; PROGRAM: HELLO WORLD
; AUTHOR : MARCELLO B.

.section .rodata

helloworld: .ascii "Hello, World!\000"	

.text
.global main

main:
  stmfd	sp!, {fp, lr}
  add	fp, sp, #4
  ldr	r0, =helloworld		       
  bl	puts				

gtfo:
  mov	r3, #0
  mov	r0, r3
  ldmfd	sp!, {fp, pc}
