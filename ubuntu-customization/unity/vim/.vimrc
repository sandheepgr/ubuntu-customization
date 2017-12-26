" Do not set compatibility 
set nocompatible              " be iMproved, required

" Set the file type off
filetype off                  " required

" Set the :find command to search for a file recursively in the current
" directory
set path+=**

" Set the wildmenu so that we can get suggestions when using wildcard 
set wildmenu

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
Plugin 'tpope/vim-surround'
Plugin 'KabbAmine/vullScreen.vim' 
Plugin 'simeji/winresizer'
Plugin 'szw/vim-maximizer'

"' All of your Plugins must be added before the following line
call vundle#end()            " required

" Turn on the indent based on file type
filetype plugin indent on    " required

" color for the tabline
" If the vim airline is used, then it will override these
hi TabLineFill ctermfg=Black ctermbg=Black
hi TabLine ctermfg=Black ctermbg=DarkGray cterm=bold
hi TabLineSel ctermfg=Red ctermbg=235

" Don't wrap the code
set nowrap " Don't wrap code

" Set the autoindent on
set autoindent

" Set the smart intent on
set smartindent

" Show the matching brackets etc..
set showmatch

" Remove the from format options
set formatoptions-=t

" Show the number
set number

" Always display the status line
set laststatus=2

" Airline options 
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


" Set the cursor line to be visible
set cursorline

" Set the current line hightlight
hi CursorLine term=bold cterm=bold ctermbg=234

" Enable syntax 
syntax enable

" Set the background to be dark
set background=dark

" Map the key for the nertTreeToggle 
nmap <silent> <C-T> :NERDTreeToggle<CR>

" Map the key for the paste toggle 
set pastetoggle=<F2>

" Set the \r to be the short cut for the reload of the vimrc file
noremap <leader>r :so %<CR>

" Set the \w to be the short cut for saving the file 
noremap <leader>w :w<CR>

" Set the \s to be shortcut for the sudo write
noremap <leader>s :w !sudo tee %<CR>

" Key mapping for copy to system clipboard
noremap <leader>y "+y

" Key mapping for paste from system clipboard
noremap <leader>p "+p

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

" Map th keys for the buffer traversal
nnoremap ,  :bprev<CR>
nnoremap .  :bnext<CR>

" Map the key for the split or window traversal 
nnoremap <tab> <c-w><c-w>

" Map the keys for the tab traveral
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Color for the line number section
highlight LineNr ctermbg=233
highlight LineNr ctermfg=244


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
