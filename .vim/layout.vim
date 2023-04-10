"CURSOR LAYOUT
set number relativenumber
set cursorline
set showmatch
set ruler

"GENERAL LAYOUT
colorscheme PaperColor
set background=dark
set wrap
set autoindent
set smartindent
syntax enable
set foldmethod=syntax
hi Folded ctermbg=None
hi Folded ctermfg=DarkCyan
set splitbelow
set splitright
autocmd bufreadpost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"STATUS LINE LAYOUT
set laststatus=2
let g:lightline = {'colorscheme': 'wombat'}
