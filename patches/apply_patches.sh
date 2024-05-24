#!/bin/bash
PATCHDIR="$(dirname $(realpath $0))"
cd $OPENLANE2_ROOT
for i in $PATCHDIR/openlane2/*.patch
do
    git apply $i
done
git apply $PATCHDIR/openlane2/support/tt-overlay.patch
cp $PATCHDIR/openlane2/support/tt-overlay.nix nix/
cp -r $PATCHDIR/openlane2/deps nix/tt-patches
git add .
