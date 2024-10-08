" Haakon's vimrc



" Main settings
"
" Disable Vi compatibility (thus enabling more Vim features)
set nocompatible
" Fix diacritical chars (�, �, �, etc.)
set encoding=utf-8
" Disable the default Vim startup message
set shortmess+=I
" Show line numbers (how is this not default on)
set number
" Use relative numbering style
set relativenumber
" Always show the status line at the bottom
set laststatus=2
" Always allow backspacing
set backspace=indent,eol,start
" Case insensitive search
set ignorecase
" Unless you start entering uppercase letters
set smartcase
" Search while typing search term
set incsearch
" Bell sound go __ (disable bell)
set noerrorbells visualbell t_vb=
" Sometimes you gotta click that mouse (enable mouse support)
set mouse+=a
" Set vim to autoindent
set autoindent
" Set ruler at column 80 and 100
set colorcolumn=80,100
" Set tab length
set tabstop=4
set softtabstop=4
set shiftwidth=4



" Other settings
"
" Set wrap at column, only in .md-files
au filetype markdown set textwidth=100
" Turn on syntax highlighting.
syntax enable
" Set color scheme
colorscheme monokai



" Key remaps
"
" Don't yank on paste
vmap p "_dP
" Ctrl+Shift+[k or j] moves current line up or down
nmap <c-s-k> :m -2<CR>
nmap <c-s-j> :m +1<CR>
" Disable ex mode
nmap Q <Nop>
" Disable command line mode
map q: <Nop>



" Macros
"
" Append ';' at EOL
function! AppendSemicolon()
	let save_pos = getpos(".")
	normal! A;
	call setpos(".", save_pos)
	normal! a
endfunction
" Map macro to <Shift-k>
map K :call AppendSemicolon()<CR>

