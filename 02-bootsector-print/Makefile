
all: compile 

FLAG=
compile:
	as -o boot.o boot.S
	ld -o boot.bin --oformat binary -e bootloader boot.o		
clean: 
	rm -rf *.bin *.o

run:
	qemu-system-x86_64 -nographic boot.bin