
# Set the path to the CPM emulator. 
# Obtain it from here: https://github.com/jhallen/cpm
CPM=cpm

# Define the assembler and linker. Get Macro80 and Link80 from here:
# http://www.retroarchive.org/cpm/lang/m80.com
# http://www.retroarchive.org/cpm/lang/l80.com
MACRO80=m80
LINK80=l80

TARGET=test.com

all: $(TARGET)

main.rel: main.asm conio.inc
	$(CPM) $(MACRO80) =main.asm

conio.rel: conio.asm
	$(CPM) $(MACRO80) =conio.asm

test.com: conio.rel main.rel
	$(CPM) $(LINK80) main,conio,test/n/e

clean:
	rm -f $(TARGET) *.rel

