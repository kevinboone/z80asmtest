# Z80asmtest

A simple program that illustrates how to use the Macro80 and Link80
tools to build CP/M programs from multiple assembly sources.

Don't forget that all assembly source files have to be in "DOS" format, that 
is, with lines ending CR-LF. The Macro80 assembler fails in a peculiar
way if lines are not terminated properly.

Get Macro80 and Link80 from here:

http://www.retroarchive.org/cpm/lang/m80.com
http://www.retroarchive.org/cpm/lang/l80.com

The Makefile is for testing the process under Linux; on CP/M you'd
have to enter the commands manually, or create a SUB file.

The program just prints "Hello, World", but it separates out the
"logic" (such as it is) into separate .asm files.

For full details, see 

http://kevinboone.com/z80asmtest.html

