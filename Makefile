FTP_IP ?= 192.168.1.5 # put console IP here
.PHONY: all clean

all:
	cmake --toolchain=cmake/toolchain.cmake -DFTP_IP=$(FTP_IP) -S . -B build && $(MAKE) -C build subsdk9_meta

clean:
	rm -r build || true
