#!/bin/bash

echo "🚀 TerminalUnited Auto Builder"

echo "📦 masuk repo..."
cd TerminalUnited || exit

echo "🔧 install tools..."
pkg update -y
pkg install -y zip git

echo "📦 membuat bootstrap..."

mkdir -p app/src/main/cpp

echo "bootstrap" > bootstrap.txt

zip -r app/src/main/cpp/bootstrap-aarch64.zip bootstrap.txt
zip -r app/src/main/cpp/bootstrap-arm.zip bootstrap.txt
zip -r app/src/main/cpp/bootstrap-i686.zip bootstrap.txt
zip -r app/src/main/cpp/bootstrap-x86_64.zip bootstrap.txt

rm bootstrap.txt

echo "📝 git commit..."

git add .

git commit -m "TerminalUnited auto build system" || true

echo "🔄 sync repo..."

git pull origin master --rebase || true

echo "🚀 push ke github..."

git push origin master

echo "✅ selesai"
echo "⚡ GitHub Actions sekarang akan build APK otomatis"
