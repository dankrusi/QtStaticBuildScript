#/bin/sh

echo ""
echo "Static Qt Build Script"
echo ""

QT_VERSION=5.1.0
PREFIX_PATH=$HOME/Qt/$QT_VERSION-static

echo "Will configure with:"
echo "  -static"
echo "  -release"
echo "  -opensource"
echo "  -nomake examples"
echo "  -nomake demos"
echo "  -prefix $PREFIX_PATH"

echo ""
echo "Press any key to configure Qt..."
read
./configure -static -release -opensource -nomake examples -nomake demos -prefix /Users/dankrusi/Qt/5.1.0-static

echo ""
echo "Press any key to buikd Qt..."
read
make

echo ""
echo "Press any key to install Qt..."
read
make install