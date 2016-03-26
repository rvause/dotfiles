#!/usr/bin/env bash
FILES="_vimrc _vim _xinitrc _Xdefaults _config"
BINFILES="$(pwd)/bin/*"

for file in $FILES
do
    _file=$(echo "$file" | sed -r "s/^_/./")
    src=$(pwd)/$file
    dest="$HOME/$_file"
    echo "$src -> $dest"
    ln -sf $file "$dest"
done

for file in $BINFILES
do
    dest="$HOME/bin/$(basename $file)"
    echo "$file -> $dest"
    ln -sf $file "$dest"
done
