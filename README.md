
## Install

### Requirements

Your system needs have installed first llvm, g++, gmp and openssl{-dev}. On Ubuntu:

```
sudo apt install llvm g++ libgmp-dev libssl-dev
```

### From source

To install from source, you can run the following commands:
```bash
cd bn
make
make install
```
The library is then installed under `/usr/local/`.
 - To use it for the current session:
```bash
export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib
```
 - To use it permanently, add `/usr/local/lib` to `/etc/ld.so.conf` , then run `ldconfig` as root


