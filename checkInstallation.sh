#!/bin/sh

export USER=root

cargo new --bin dummy
cd dummy
cargo build --release --target=armv7-unknown-linux-gnueabihf

cd ..
