#!/bin/bash

# Install Rust using rustup
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Ensure Cargo bin directory is in the PATH
source $HOME/.cargo/env

# Download and install LLVM
echo "Downloading and installing LLVM version 16..."
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
echo | sudo ./llvm.sh 16

# Clean up
rm llvm.sh

sudo apt install --install-recommends -y cmake libglib2.0-dev
sudo apt install -y protobuf-compiler
sudo apt install cargo

protoc --version  # Ensure compiler version is 3+

git config --global core.symlinks true
git clone --recurse-submodules https://github.com/denoland/deno.git
cd deno

cargo build -vv

echo "Installation complete."
