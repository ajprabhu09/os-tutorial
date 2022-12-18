*Concepts you may want to Google beforehand: assembler, BIOS*

**Goal: Create a file which the BIOS interprets as a bootable disk**

This is very exciting, we're going to create our own boot sector!

Theory
------

When the computer boots, the BIOS doesn't know how to load the OS, so it
delegates that task to the boot sector. Thus, the boot sector must be
placed in a known, standard location. That location is the first sector
of the disk (cylinder 0, head 0, sector 0) and it takes 512 bytes.

To make sure that the "disk is bootable", the BIOS checks that bytes
511 and 512 of the alleged boot sector are bytes `0xAA55`.

Code
----
A simple bootloader would look like 
```
.global bootloader  # makes our label "init" available to the outside
bootloader:         # this is the beginning of our binary later.
  jmp bootloader    # jump to "init"

.fill 510 - .-bootloader, 1, 0x00
.byte 0x55
.byte 0xaa

```
Note that `.fill` and `.byte` macro which are GNU assembler directives more information here https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html

Run `make` to create the `.bin` file which would be our bare bones bootloader

`hexdump -C boot.bin` will show the hex values inside the binary. 

To verify you may get something like this 
```
eb fe 00 00 00 00 00 00  
00 00 00 00 00 00 00 00  
00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 
00 00 00 00 00 00 55 aa

```

Note the trailing `55 aa`

Running the Bootloader
----
the boot loader can be run on an emulator like qemu

to run it `make run`

to exit out of the emulation type `Ctrl-A` then `C` then type in `quit`

``

try to play around with assembly file and try to break it 


