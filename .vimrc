execute pathogen#infect()

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--------->VIM interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
 set so=7
 
" set wild menu for completion
set wildmenu
set wildmode=list:longest,full

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set nobackup        " do not keep a backup file, use versions instead

" enable UTF-8 stuff
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Set to auto read when a file is changed from the outside
set autoread 

set history=50    " keep 50 lines of command line history
set ruler            " show the cursor position all the time
set showcmd          " display incomplete commands
set incsearch        " do incremental searching
set wildmenu         " Add wildcards for completion while loading files
set modeline         " Set modeline so that you can see some info 
set ls=2             " set two lines for info

"ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch 


""Add a bit extra margin to the left
set foldcolumn=1

"Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

set expandtab

set softtabstop=2
set tabstop=2
set shiftwidth=2
set wrap!
set number      " show line number
set nohlsearch  " dont highlight search
let g:templatePath = "/home/ben/.vim/templates"

" Mapping for Copy/Paste
"imap  sahi.example.com " breaks ie strg+v strg+m
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
"  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent        " always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
         \ | wincmd p | diffthis//ap


" Height of the command bar
set cmdheight=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -------> Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")
  set background=dark
  colorscheme peaksea
else
  colorscheme desert
  let g:colors_name="desert"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---------> mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTREEToggle
map <F7> :NERDTreeToggle<CR>
map <F8> :FufBuffer<CR>
map <F9> :FufFile<CR>
map <M> ma

" Fast saving
nmap <leader>w :w!<cr>

" Grep stuff
map <C-G> :vimgrep /<C-R><C-W>/j *<CR>:cope<CR>

map DS :%s/\s\+$// <CR>

" Don't use Ex mode, use Q for formatting
map Q gq

" When you press <leader>r you can search and replace the selected text
noremap <silent> <leader>r :call VisualSelection('replace', '')<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines



""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk


"Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""
"Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""
" => MRU plugin
"""""""""""""""""""""""""""""""
" let MRU_Max_Entries = 400
map <leader>f :MRU<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 let g:airline_theme="powerlineish"



