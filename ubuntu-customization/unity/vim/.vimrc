set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" utilities
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in
Plugin 'scrooloose/NERDCommenter'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'https://github.com/christoomey/vim-tmux-runner'
Plugin 'christoomey/vim-run-interactive'
Plugin 'jeffkreeftmeijer/vim-numbertoggle' " for toggling the relative line numbering based on mode
Plugin 'flazz/vim-colorschemes'
Plugin 'gcmt/taboo.vim'
Plugin 'tpope/vim-surround'
Plugin 'KabbAmine/vullScreen.vim' 


hi TabLineFill ctermfg=Black ctermbg=Black
hi TabLine ctermfg=Black ctermbg=DarkGray cterm=bold
hi TabLineSel ctermfg=Red ctermbg=235
set nowrap " Don't wrap code
set autoindent
set smartindent
set showmatch
set formatoptions-=t
set number
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
nmap <silent> <C-T> :NERDTreeToggle<CR>
set pastetoggle=<F2>

set cursorline
hi CursorLine term=bold cterm=bold

syntax enable
set background=dark

" disable the arrow kes in insert mode
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Disable the arrow keys in normal mode
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Disable the escape key on insert mode ( force to use jk ) 
inoremap <esc> <nop>

" Map jk as the mode switch
inoremap jk  <esc>

nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>


" Color for the line number section
highlight LineNr ctermbg=233
highlight LineNr ctermfg=244

"irline_powerline_fonts = 1
"let g:airline_theme='powerlineish' All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
