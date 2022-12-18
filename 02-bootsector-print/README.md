
**Goal: Make our previously silent boot sector print some text**

We will improve a bit on our infinite-loop boot sector and print
something on the screen. We will raise an interrupt for this.

Your boot sector will say 'Hello' and hang on an infinite loop

to print to the screen you will use the bios interrupt `0x10` try to google what this does and what the `int` instruction in x86 does. (No this is not an integer)

Bonus points if you can do it in a loop! ie no hard coding the characters

WARNING: Be careful where you put your code. Remember that the bootloader is only 512 bytes.

Resources
----
1. https://en.wikipedia.org/wiki/INT_10H
2. https://stackoverflow.com/questions/27332266/print-string-with-bios-interrupt-0x10