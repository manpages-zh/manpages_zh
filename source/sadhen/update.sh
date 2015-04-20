#!/bin/bash

ronn --roff ronn/coreutils/*.ronn

if ! [ -e man/zh_CN/man1 ]; then
    mkdir -p man/zh_CN/man1;
fi

if ! [ -e ~/.local/man/zh_CN/man1 ]; then
    mkdir -p ~/.local/man/zh_CN/man1;
fi

cp -u ronn/coreutils/*.1 man/zh_CN/man1/
mv -u ronn/coreutils/*.1 ~/.local/man/zh_CN/man1/
