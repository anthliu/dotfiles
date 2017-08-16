" Mappings
map Y y$
imap fd <Esc>

" Backup

set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" custom

set ignorecase
set confirm
set visualbell
set backspace=indent,eol,start

set laststatus=2
set showcmd
set cmdheight=2
set ruler
set statusline=%f "tail of the filename

" == basic ==

syntax on
filetype plugin indent on

set nocompatible
set number
set showmode
" set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
"set mouse=a
set history=1000
"set clipboard=unnamedplus,autoselect

"set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1
