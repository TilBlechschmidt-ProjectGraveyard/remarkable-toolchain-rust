# reMarkable Toolchain | Docker Edition

In order to ease compilation of Projects utilising [libremarkable](https://github.com/canselcik/libremarkable) this Docker image houses the complete toolchain and compilers to build a project for the `armv7-unknown-linux-gnueabihf` build target.

In order to build a project with this image execute the following command in your crate root:
```bash
docker run -v $(pwd):/project --rm --name remarkable-build themegatb/remarkable-toolchain-rust
```
By default it calls `make` and thus expects a `Makefile` to be present.
If you would rather call cargo directly you can just append your `cargo` command at the end e.g.:
```bash
docker run -v $(pwd):/project --rm --name remarkable-build themegatb/remarkable-toolchain-rust cargo build --target=armv7-unknown-linux-gnueabihf
```

## Disclaimer

This is a hobby project.

The author(s) and contributor(s) are not associated with reMarkable AS, Norway.
**reMarkable** is a registered trademark of *reMarkable AS* in some countries.
Please see https://remarkable.com for their product.
