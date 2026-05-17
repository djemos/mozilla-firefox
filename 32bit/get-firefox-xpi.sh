#!/bin/bash

VERSION=147.0.2

URL=https://download-installer.cdn.mozilla.net/pub/firefox/releases/$VERSION/linux-i686/xpi/
pkgdir=firefox-xpi-$VERSION
pkgname=$pkgdir.tar.xz

rm -rf $pkgdir $pkgname
mkdir $pkgdir
cd $pkgdir
wget -r -l1 -nd -A '*.xpi' "$URL"
cd ..
tar -cf - $pkgdir | xz - > $pkgname
rm -rf $pkgdir
