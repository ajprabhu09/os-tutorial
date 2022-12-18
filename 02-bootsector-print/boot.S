.global bootloader  # makes our label "init" available to the outside

# TODO: looping stye print
bootloader:         # this is the beginning of our binary later.
  movb $0x0e, %ah   # TTy mode
  
# movq bootloader_string, %rdi
# movb (%rdi), %al

  movb $65, %al # prints AAAAAA

  int $0x10
  int $0x10
  int $0x10
  int $0x10
  int $0x10
  int $0x10


  jmp .    # jump to "init"

bootloader_string:
  .ascii "Hello world!\n"
  .set bootloader_string_size, .-bootloader_string

.fill 510 - .-bootloader, 1, 0x00 # This will need to be modified try to thing what needs to go here
.byte 0x55
.byte 0xaa
