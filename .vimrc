packloadall!

so ~/.vim/plugins.vim							" Load the plugins

"---------- Dracula color scheme ----------"
set t_CO=256
let g:dracula_colorterm = 0						" Fix dracula grey background
let g:dracula_italic = 0						" Fix dracula blue highlights

syntax enable
colorscheme dracula
packadd! dracula



"---------- General settings ----------"
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
