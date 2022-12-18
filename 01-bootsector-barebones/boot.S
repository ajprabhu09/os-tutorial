.global bootloader  # makes our label "init" available to the outside
bootloader:         # this is the beginning of our binary later.
  jmp bootloader    # jump to "init"

.fill 510 - .-bootloader, 1, 0x00
.byte 0x55
.byte 0xaa
