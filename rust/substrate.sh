## installation doc https://docs.substrate.io/install/windows/

sudo apt install --assume-yes git clang curl libssl-dev llvm libudev-dev make protobuf-compiler

rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
