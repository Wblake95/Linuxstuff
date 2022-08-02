source $VIMRUNTIME/defaults.vim
set nocompatible "For vi

set backup "Keep a backup file (restore to previous version)
if has('persistent_undo')
	set undofile "Keep an undo file (undo changes after closing)
endif

set signcolumn=auto "Text longer than 80 characters will be red
highlight OverLength ctermbg=red
match OverLength /\%80v.\+/

augroup vimrcEx
	au!
	autocmd FileType text setlocal textwidth=70
augroup END

syntax on
filetype plugin on

set number ruler
set ignorecase
set showcmd
set wildmenu
set listchars=tab:>-,trail:-
set foldmethod=marker

let mapleader=","
map <Leader>fs :set foldmethod=syntax<Enter>
map <Leader>fm :set foldmethod=marker<Enter>
map <Leader>s :set spell!<Enter>
map <Leader>hs :set hlsearch!<Enter>
map <C-l> :set list!<Enter>

map <C-j> <C-d>
map <C-k> <C-u>

imap ii <Esc>
imap <C-p> ()<Esc>i
imap <C-b> []<Esc>i
imap <C-c> {}<Esc>i
