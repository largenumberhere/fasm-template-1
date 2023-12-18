# Fasm-template-1
A template for use with the FASM assembler with x86 Linux assembly. Makes project setup and usage super quick and easy!

#### Benefits:
- Easy setup
- Standard fasm 64-bit elf file boilerplate is providied 
- Various gnu-make commands are configured:
	- `make debug` runs the gdb debugger fully ready to step through the code immediately.
	- `make clean` to remove build artifacts 
	- `make build` to assemble the program
	- `make` to build and run the program in one step
	- `print_entry` utility included

#### Setup steps:
1. Create a new folder for your project
2. Copy the `generation_artifacts` folder into it
3. Run `./generation_artifacts/generate.sh`. inside your project folder. **Do not** run from a different folder
4. (Optional) If debugging is required, add this line to ~/.gdbinit `add-auto-load-safe-path <path2>`, where <path2> is the folder of your project
5. (Optional) remove the generation_artifacts folder
