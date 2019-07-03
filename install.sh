#!/usr/bin/env bash

echo "Overwriting dotfiles"
read -p "Do you want to proceed?(y/n)" -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

CMD="ln -sf $PWD/vimrc $HOME/.vimrc"
echo "$CMD"
$CMD
