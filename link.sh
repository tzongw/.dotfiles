#!/usr/bin/env bash
# -*- coding: utf-8 -*-

ln -s .dotfiles/.gitignore_global .agignore
ln -s .dotfiles/.gitignore_global .
ln -s .dotfiles/..gitconfig .
ln -s .dotfiles/.vimrc .
ln -s .dotfiles/.vimrc.bundles .
ln -s .dotfiles/.vimrc.bundles.local .
ln -s .dotfiles/.vimrc.local .
grep dotfiles .zshrc || echo 'source .dotfiles/.profile' >> .zshrc
