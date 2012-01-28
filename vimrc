set nocompatible                    " must come first, affects other options

call pathogen#runtime_append_all_bundles()
syntax enable                       " syntax highlighting
filetype on
filetype plugin on
filetype indent on                  " file type detection on

set showcmd                         " display incomplete commands
set showmode                        " display current mode

set backspace=indent,eol,start      " intuitive backspacing

set hidden                          " handle multiple buffers better

set wildmenu                        " enhanced command line completion
set wildmode=list:longest           " complete files like a shell

set number                          " show line numbers
set ruler                           " show cursor position

set incsearch                       " highlight matches while typing
set hlsearch                        " highlight matches

set scrolloff=3                     " show 3 lines of context around the cursor

set title                           " set the terminal title

set laststatus=2                    " show the status line all the time

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

"set shiftwidth=4
"set tabstop=4
"set expandtab

" stuff from VimRubySupport
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set copyindent                      " newly added; :help ci

set directory=$HOME/.vim/tmp//,.    " keep swap files in one location

" nowo dodane - 4 maj 2011
set smarttab
set expandtab
set smartindent
"inoremap ( ()<Esc>i

" limit szerokości tekstu
set textwidth=80

" automatyczne indentowanie
set cindent

" cool status text
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

" aspell
set spelllang=en,pl


" solarIZed
set t_Co=16
set background=dark
colorscheme solarized

" tComment, faster commenting
map <c-/> <c-_><c-_>

set formatprg=par                 " paragraph formatter (keeps lines shorter than 72 columns)
                                  " see http://vimcasts.org/episodes/formatting-text-with-par/
" added 6 VIII 2011
set smartcase

" tabs shortcuts
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>

" backup in one place, need to create those dirs first manually
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set autochdir                     " automatically cd into the dir that the file is in

" 28.01.2012

set nowrap
set ttyfast

