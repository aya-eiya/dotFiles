"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.config/nvim/dein/dein.vim
let s:dein_home = $HOME . '/.config/nvim/dein'
let s:dein_repo = s:dein_home . '/dein.vim'
let s:dein_toml = s:dein_home . '/toml/dein.toml'
let s:dein_lazy_toml = s:dein_home . '/toml/dein_lazy.toml'

" Required:
if dein#load_state(s:dein_home)
  call dein#begin(s:dein_home)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo)

  " Install fzf for fzf plugin.
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })

  " Toml
  call dein#load_toml(s:dein_toml      , {'lazy':0} )
  call dein#load_toml(s:dein_lazy_toml , {'lazy':1} )

  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
set encoding=utf-8
set fileformats=unix,dos,mac
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Indent settings
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Editor UI settings
set number
set cursorline
set ruler

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

