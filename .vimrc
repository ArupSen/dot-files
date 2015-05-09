" Vundle Plugin stuff
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'Markdown-syntax'
Plugin 'ctrlp.vim'
Plugin 'Gundo'

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
" make sure that vim starts in utf-8 mode
set encoding=utf-8
" turn on line numbering
set number
" set relative number in order move with j and k without counting
set relativenumber
" get words to wrap rather than characters
set wrap
set linebreak
" syntax highlighting on
syntax on
" to get clipboard to work while in tmux session
set clipboard=unnamed
" set the colorscheme
" http://bytefluent.com/vivify/
colorscheme wombat256
" get out of vi compatible
set nocompatible
" don’t create any back up files
set nobackup
set noswapfile
" Always show status line
set laststatus=2
" Powerline Symbols
let g:airline_powerline_fonts=1

" Syntastic status line flag
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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
" the chars , i and I have mappings so can be a bit slow
" waiting for a possible next char i waiting for i
set timeout timeoutlen=500 ttimeoutlen=100
" Display keystrokes in statusline
set showcmd
" Display which line the cursor is on
set cursorline

" Use html snippets from snipmate in php files
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html
" set files with .md extension to be markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
" Prevent ex mode being triggered
nnoremap Q <nop>
" Tab completion just like in the shell
set wildmode=longest,list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:·
" Invisible character colours
highlight NonText guifg=#ccc
" Show non-printing whitespace characters by default
set list
" automatically save and load folded regions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" allow backspace to delete from where it usually cannot
set backspace=indent,eol,start
" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
" Open a new buffer without having to save unsaved changes
set hidden
" Set the mapping for the Gundo plugin - default F5
nnoremap <F5> :GundoToggle<CR>
" set the <leader>
let mapleader = ","
" Create a blank line but remain in normal mode
nnoremap - o<Esc>
nnoremap _ O<Esc>
" change current word to UPPERCASE when in NORMAL and INSERT mode
inoremap <c-u> <esc>vawUea
nnoremap <c-u> viwU
" open your ~/.vimrc file in a split
nnoremap <leader>rc :vsplit $MYVIMRC<cr>
