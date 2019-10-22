" Install vim-plug if not installed yet
" (https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc is an intellisense engine for vim8 & neovim.
Plug 'tpope/vim-sensible' " Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.

" Initialize plugin system
call plug#end()

set number
set numberwidth=5
set incsearch " incremental search - show the 'best match so far' as it's being typed
set ruler " always show file info at the bottom
set autoindent
