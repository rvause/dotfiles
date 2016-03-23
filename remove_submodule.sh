#!/usr/bin/env bash
SUBMODULE=$1
git submodule deinit $SUBMODULE
git rm $SUBMODULE
rm -rf .git/modules/$SUBMODULE
git commit -m "Removed ${SUBMODULE}"
