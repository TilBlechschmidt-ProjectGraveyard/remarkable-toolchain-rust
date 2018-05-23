#!/bin/sh

mkdir -p ~/.cargo
touch ~/.cargo/config
cat >>~/.cargo/config <<EOF
[target.armv7-unknown-linux-gnueabihf]
linker = "arm-linux-gnueabihf-gcc"
EOF

# rustup default nightly
rustup target add armv7-unknown-linux-gnueabihf
