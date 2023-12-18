# assert that cargo is installed
if ! command -v cargo &> /dev/null 
then
    echo "cargo was not found. Please install it from https://www.rust-lang.org/tools/install to build a dependency"
    exit 1
fi

# Build print_entry_rs and copy the binary to the root
cd generation_artifacts/print_entry_rs
cargo build -q
cp target/debug/print_entry ../../print_entry  
cargo clean     # delete build artifacts to save space 
cd ../..

# copy Makefile template
cp generation_artifacts/Makefile Makefile

# copy main.asm template
cp generation_artifacts/main.asm main.asm

# warn if fasm is not installed
if ! command -v fasm &>/dev/null 
then
    echo "Warning: FASM (Flat Assembler) was not found. The makefile provided will not work without it."
fi

# warn if gdb is not installed
if ! command -v gdb &>/dev/null
then
    echo "Warning: gdb was not found. Using `make debug` requires gdb to be installed and configured correctly."
fi

