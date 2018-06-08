#!/usr/bin/env bash
# -*- coding: utf-8 -*-
cd
ln -s .dotfiles/.gitignore_global .agignore
ln -s .dotfiles/.gitignore_global .
ln -s .dotfiles/..gitconfig .
ln -s .dotfiles/.vimrc .
ln -s .dotfiles/.vimrc.bundles .
ln -s .dotfiles/.vimrc.bundles.local .
ln -s .dotfiles/.vimrc.local .
grep dotfiles .zshrc > /dev/null || echo 'source .dotfiles/.profile' >> .zshrc
mkdir .vim
mkdir .vim/bundle
mkdir .vim/colors
ln -s .dotfiles/molokai.vim .vim/colors
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
