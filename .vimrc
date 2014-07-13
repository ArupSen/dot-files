" Plugin stuff
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" turn on line numbering
set number

" get words to wrap rather than characters
set wrap
set linebreak

" syntax highlighting on
syntax on

" set the colorscheme
" http://bytefluent.com/vivify/
colorscheme inkpot

" get out of vi compatible
set nocompatible

" don’t create any back up files
set nobackup
set noswapfile

" Always show status line
set laststatus=2

" Set tabs to two spaces
set shiftwidth=2
set tabstop=2

" make tabs into spaces
set expandtab

" Show title at the top of the screen
set title

" check for file type
filetype plugin indent on

" set to auto read when a file is changed from outside vim
set autoread

" Always show current position
set ruler

" Show matching brackets when cursor is over them
set showmatch 

" mappings for shifting around windows without Ctrl-W
:map ,j <C-w>j 
:map ,k <C-w>k
:map ,l <C-w>l 
:map ,h <C-w>h 

" remap the Esc key as it's too far away
inoremap ii <esc>
inoremap II <esc>

" Display keystrokes in statusline
set showcmd

" Display which line the cursor is on
set cursorline

" Use html snippets from snipmate in php files
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

" Prevent ex mode being triggered
nnoremap Q <nop>

" Tab completion just like in the shell
set wildmode=longest,list
