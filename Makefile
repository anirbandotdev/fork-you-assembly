ASM=main.asm
OBJ=$(ASM:.asm=.o)
BIN=$(ASM:.asm=)

compile:
	nasm -f elf -I ./src $(ASM) -o $(OBJ)
	ld -m elf_i386 $(OBJ) -o $(BIN)

run:
	./$(BIN)

clean:
	rm -f $(OBJ) $(BIN)

