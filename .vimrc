"Vundle - Vim bundle  -- plugin manager
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let Vundle manage itself.
Plugin'VundleVim/Vundle.vim'

"PLugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jdkanani/vim-material-theme'
Plugin 'arcticicestudio/nord-vim'
"Plugin 'Shougo/unite.vim'

call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
"filetypeplugin on
"
"Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line

"NERDTreeauto startup
"autocmdStdinReadPre * let s:std_in=1
"autocmdVimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"NERDTreeopen shortcut
map<C-n> :NERDTreeToggle<CR>

"NERDTreeclose vim if NERDTree only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
"set termguicolor
set termencoding=utf-8

"MacVim Powerline
if has("gui_running")
let s:uname = system("uname")
if s:uname == "Darwin\n"
set guifont=Inconsolata\ for\ Powerline:h15
endif
endif

"Display line for powerline
set laststatus=2

"SynxScustom .vimrc
"syntax on
syntax enable
"set background=dark
"colorscheme material-theme
colorscheme nord
set nu
set ruler
"set hlsearch
set mouse=ar mousemodel=extend
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set listchars=eol:$,tab:»·,trail:·,extends:>,precedes:<
set backspace=indent,eol,start

"Automatically remove all trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

"Commands
:command WQ wq
:command Wq wq
:command W w
:command Q q

"Tabindentation
set smartindent
set tabstop=4
set shiftwidth=4


"Spaceindentation
"set smartindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

"split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
