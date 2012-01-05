#!/bin/bash

PKGNAME=everypage
PKGVERS=1-0
PKGCNT=("everypage.dtx" "everypage.ins" "README")

mkdir -p buildpkg/"$PKGNAME"_"$PKGVERS"
cp "${PKGCNT[@]}" buildpkg/"$PKGNAME"_"$PKGVERS"
cd buildpkg
zip -r -9 "$PKGNAME"_"$PKGVERS".zip "$PKGNAME"_"$PKGVERS"
rm -fr "$PKGNAME"_"$PKGVERS"
cd ..
 
