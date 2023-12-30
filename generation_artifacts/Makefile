# default command builds and runs
run: build
	./main

# build assembles the file with builtin fasm linking. If you are linking C libraries, you will need to change this step
build: 
	fasm ./main.asm

# debug with gdb
# NOTE: required setting: https://stackoverflow.com/questions/16595417/loading-gdbinit-from-current-directory-fails-with-auto-loading-has-been-declin
#  add this line to ~/.gdbinit `add-auto-load-safe-path <path2>`
#	, where <path2> is the folder of your project
debug: build
	# write to .gdbinit:
	#  load file, set the first gdb breakpoint to the elf entrypoint address, load the TUI with assembly layout, set to use intel assembly syntax
	./print_entry ./main | xargs -I {} printf "\
	file ./main\n\
	break *{} \n\
	layout asm\n\
	run\nset disassembly-flavor intel\n\
	" > .gdbinit
	
	# start gdb
	gdb --quiet

clean:
	-rm main
	-rm .gdbinit
