#!/bin/sh

set -eu

mkdir -p public/flutter

git clone https://github.com/flutter/flutter.git -b stable --depth 1 bin/flutter

cd flutter/examples
../../bin/flutter/bin/flutter build web --base-href "/flutter/examples/" --release
cp -r build/web/ ../../public/flutter/examples

cd ../../
npm run build
