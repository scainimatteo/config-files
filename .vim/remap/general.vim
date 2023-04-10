"REMAP
nnoremap 9 $
nnoremap <TAB> v>
nnoremap <S-TAB> v<
nmap <CR> o<ESC>
nnoremap <leader>n :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>
vnoremap <TAB> >
nnoremap ' :<C-u>marks<CR>:normal! '
nnoremap m :<C-u>marks<CR>:normal! m
nnoremap zq zA

nnoremap <leader>l <C-W>l
nnoremap <leader>k <C-W>k
nnoremap <leader>j <C-W>j
nnoremap <leader>h <C-W>h
nnoremap <leader>\| <C-W>\|
nnoremap <leader>= <C-W>=

autocmd Filetype * inoremap <C-Space> <ESC>/<++><CR>"_c4l
