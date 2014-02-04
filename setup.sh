#!/bin/bash

DOT_FILES=( .zshrc .gitconfig .vim .vimrc .tmux.conf .tmux-powerlinerc )

for file in ${DOT_FILES[@]}
do
  if [ -a $HOME/$file ]; then
    echo "既にファイルが存在します: $file"
  else
    ln -s $HOME/dotfiles/$file $HOME/$file
    echo "シンボリックリンクを貼りました: $file"
  fi
done

# submodule init & update
git submodule update --init

