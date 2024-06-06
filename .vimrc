" syntax mapping
autocmd BufNewFile,BufRead *.tex set syntax=context
" Mappings
map Y y$
imap fd <Esc>

" Backup

if !isdirectory($HOME . "/.vim")
    call mkdir($HOME . "/.vim", "p")
endi
if !isdirectory($HOME . "/.vim/backup_files")
    call mkdir($HOME . "/.vim/backup_files", "p")
endi
if !isdirectory($HOME . "/.vim/swap_files")
    call mkdir($HOME . "/.vim/swap_files", "p")
endi
if !isdirectory($HOME . "/.vim/undo_files")
    call mkdir($HOME . "/.vim/undo_files", "p")
endi
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" custom
set relativenumber

" for make messages
nnoremap <leader>m :silent make\|redraw!\|cc<CR>
set shortmess=a

set ignorecase
set confirm
set visualbell
set backspace=indent,eol,start

set laststatus=2
set showcmd
set cmdheight=2
set ruler

" == basic ==

syntax on
filetype plugin indent on
let g:python_recommended_style = 0

set nocompatible
set number
set showmode
" set tw=80
set smartcase
set smarttab
" set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
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
