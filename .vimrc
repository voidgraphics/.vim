so ~/.vim/plugins.vim							" Load the plugins

syntax enable
colorscheme dracula
packadd! dracula

set backspace=indent,eol,start						" Make backspace behave like any other editor
let mapleader=','							" Change the default Leader to a comma for ease of use
set number								" Show line numbers



"---------- Search ----------"
set hlsearch
set incsearch

"---------- Mappings ----------"

" Make it easy to edit the .vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Automatically source the .vimrc file
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
