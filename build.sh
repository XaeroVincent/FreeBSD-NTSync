#!/bin/sh

build_module() {
    make COMPAT32=yes
    sudo make install
    make clean
    sudo kldload ntsync
}

build_module
