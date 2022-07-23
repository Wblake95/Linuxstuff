" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

set backup		" keep a backup file (restore to previous version)
if has('persistent_undo')
  set undofile	" keep an undo file (undo changes after closing)
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
" if has('syntax') && has('eval')
"   packadd! matchit
" endif

set number ruler
set spell
set signcolumn=auto
highlight OverLength  ctermbg=red
match OverLength /\%80v.\+/
