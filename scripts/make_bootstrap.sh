#!/bin/bash

set -e

echo "Cleaning old bootstrap..."

rm -f app/src/main/cpp/bootstrap-*.zip

echo "Creating bootstrap folder..."

mkdir -p bootstrap/bin
mkdir -p bootstrap/etc

echo "Creating basic commands..."

echo '#!/bin/sh
echo "Welcome to TerminalUnited"' > bootstrap/bin/tu
chmod +x bootstrap/bin/tu

echo "Packaging bootstrap..."

cd bootstrap

zip -r ../app/src/main/cpp/bootstrap-aarch64.zip .
zip -r ../app/src/main/cpp/bootstrap-arm.zip .
zip -r ../app/src/main/cpp/bootstrap-i686.zip .
zip -r ../app/src/main/cpp/bootstrap-x86_64.zip .

cd ..

echo "Bootstrap created successfully"
