#!/bin/bash

set -e

BOOTDIR=app/src/main/cpp

mkdir -p $BOOTDIR

echo "Creating bootstrap archives..."

mkdir bootstrap_tmp
echo "TerminalUnited bootstrap" > bootstrap_tmp/readme.txt

zip -r $BOOTDIR/bootstrap-aarch64.zip bootstrap_tmp
zip -r $BOOTDIR/bootstrap-arm.zip bootstrap_tmp
zip -r $BOOTDIR/bootstrap-i686.zip bootstrap_tmp
zip -r $BOOTDIR/bootstrap-x86_64.zip bootstrap_tmp

rm -rf bootstrap_tmp

echo "Bootstrap created!"
