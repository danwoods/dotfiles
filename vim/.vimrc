set noautoindent
setlocal comments-=://


""Set better title bar
set title


au FileType * setl fo-=cro


"" set tabs
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set ai
set number


"" set folding
set foldmethod=indent
set nofoldenable
set foldlevel=1
""set foldnestmax=1


"" add status bar
set ruler
set ls=2

"" add highlight search
set hlsearch

"" allow plugins
""filetype on
""filetype plugin on
set nocompatible              " be iMproved, required


" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


filetype off


" Plugins (Vundle)
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/unite.vim'


call vundle#end()
filetype plugin indent on
" end Vundle


" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeDirArrows=0


"" enable pathogen
"execute pathogen#infect()


"" allow syntax
syntax enable


"" set color scheme
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized


"" set mapping
imap ' <C-V>'<C-V>'<Left>
imap " <C-V>"<C-V>"<Left>
imap ( <C-V>(<C-V>)<Left>
imap { <C-V>{<C-V>}<Left>
imap [ <C-V>[<C-V>]<Left>
nmap < :tabprevious<CR>
nmap > :tabnext<CR>
map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'


"" set custom commands
command Z NERDTreeToggle
