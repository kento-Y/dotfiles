#!/usr/bin/env bash

set -u

THIS_DIR=$(cd $(dirname $0); pwd)

BASEDIR=$(dirname $0)
cd $BASEDIR

for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    ln -snfv ${PWD}/"$f" ~/
done

