# Vim configuration

My simple vim configuration based on vim's native package support and git (Vim 8+ required).

## Install

    git clone --recursive https://github.com/Finn10111/vim.git ~/.vim
    ln -s ~/.vim/.vimrc ~/

    # For ALE's python support you need to install flake8

Optionally you can use YouCompleteMe or set other custom configurations:

    cp ~/.vim/.vimrc.local .
    cd ~/.vim/pack/syntax/opt/YouCompleteMe/
    python3 install.py --all

## Update

    git pull --recurse-submodules origin master

## Included plugins

* Happy Hacking color scheme: https://gitlab.com/yorickpeterse/happy_hacking.vim
* vim-devicons: https://github.com/ryanoasis/vim-devicons
* universal ctags: https://github.com/universal-ctags/ctags
* ctrlp.vim: https://github.com/ctrlpvim/ctrlp.vim
* lightline.vim: https://github.com/itchyny/lightline.vim
* NERDTree: https://github.com/preservim/nerdtree
* NERD Commenter: https://github.com/preservim/nerdcommenter
* nerdtree-git-plugin: https://github.com/Xuyuanp/nerdtree-git-plugin
* fugitive.vim: https://github.com/tpope/vim-fugitive
* YouCompleteMe: https://github.com/ycm-core/YouCompleteMe
* ALE (Asynchronous Lint Engine: https://github.com/dense-analysis/ale

Please have a look at each plugin for detailed information.

## Some shortcuts and commands to remember

### General

Save and quit :-)

    :wq

Search

    /foobar

Jump to next seach result

    n

Search and replace

     :%s/search/replace/g

### ctrlp.vim

Open CtrlP (just type for easy searching)

    <c-p>

Toggle modes (buffer, MRU, files - while CtrlP is open)

    <c-t>

### NERDTree

Toggle NERDTree

    <c-t>

### NERD Commenter

Toggle comment state of line or selected lines
(I've mapped leader to , with `let mapleader=","`)

    <leader>c<space>

### fugitive.vim

Commit

    :Git commit

### vim-gitmoji

While in insert mode (wrting commit message):

    <c-x><c-u>

### ALE

Fix file

    :ALEFix

Go to previous or next error

    <C-k> (previous)
    <C-j> (next)

### YouCompleteMe

Force auto completion suggestion

    <C-Space>

Close preview windows

    <c-w>z
