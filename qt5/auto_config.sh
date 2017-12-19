#!/bin/sh
mkdir qt5
cd qt5
wget https://download.qt.io/archive/qt/5.6/5.6.0/single/qt-everywhere-opensource-src-5.6.0.tar.gz
tar xvf qt-everywhere-opensource-src-5.6.0.tar.gz
cd qt-everywhere-opensource-src-5.6.0
rm qtbase/mkspecs/linux-arm-gnueabi-g++/qmake.conf
cp ../../qmake.conf  qtbase/mkspecs/linux-arm-gnueabi-g++/qmake.conf
./configure \
    -prefix /home/sz/qt/qt5.6 \
    -opensource \
    -confirm-license \
    -release -shared \
    -xplatform linux-arm-gnueabi-g++ \
    -optimized-qmake \
    -linuxfb    \
    -c++std c++11 \
    -pch \
    -qt-sql-sqlite \
    -qt-libjpeg \
    -qt-zlib \
    -qt-libpng \
    -qt-freetype \
    -qt-pcre \
    -no-opengl \
    -no-sse2 \
    -no-openssl \
    -no-nis \
    -no-cups \
    -no-glib \
    -no-dbus \
    -no-xcb \
    -no-eglfs \
    -no-xcursor -no-xfixes -no-xrandr -no-xrender \
    -no-separate-debug-info \
    -no-iconv \
    -make libs \
    -make examples \
    -nomake tools -nomake tests \
    -skip qt3d -skip qtcanvas3d -skip qtdoc -skip qtwayland
exit
