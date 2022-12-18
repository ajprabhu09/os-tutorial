.global bootloader  # makes our label "init" available to the outside
bootloader:         # this is the beginning of our binary later.
  
  
  
  jmp bootloader    # jump to "init"

.fill 510 - .-bootloader, 1, 0x00 # This will need to be modified try to thing what needs to go here
.byte 0x55
.byte 0xaa
