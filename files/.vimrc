" vim-plug {{{
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
call plug#end()
" }}}

filetype plugin indent on

" Spaces & Tabs {{{
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert spaces
set autoindent
" }}}

" Navigation {{{
set mouse=a " handles all mouse modes
" }}}

" UI Layout {{{
set number          " show line numbers
set numberwidth=5
set showcmd         " show command in the bottom bar
set ruler           " always show file info at the bottom
set cursorline      " highlight current line
set showmatch       " higlight matching parenthesis
" }}}

" Searching {{{
set incsearch   " incremental search - show the 'best match so far' as it's being typed
set hlsearch    " highlight all matches
" }}}

" netrw settigs {{{
let g:netrw_banner = 0 " Don't display top banner
let g:netrw_liststyle = 1 " Files list display style:
				" 0: Thin, one file per line
				" 1: Long, one file per line with file size and time stamp
				" 2: Wide, which is files in columns
				" 3: Tree style
" }}}
