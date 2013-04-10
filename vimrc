" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" if has ('gui_running')
"   set background=light
" else
    set background=dark
" endif

set t_Co=256

" let g:solarized_termcolors=256

colorscheme solarized

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

call pathogen#infect()
call pathogen#helptags()

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

set expandtab
set tabstop=2
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set nocompatible 
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set shiftwidth=2
set nowrap
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
set number
set numberwidth=1

set encoding=utf-8
set laststatus=2

if has ('gui_running')
  let g:Powerline_symbols = 'fancy'
else
endif

let mapleader=","

map <C-p> :CommandT<CR>
map <C-b> :CommandTBuffer<CR>

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
