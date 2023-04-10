"REMAP
map ì $
nnoremap <TAB> v>
nnoremap <S-TAB> v<
vnoremap <TAB> >
nmap <CR> o<ESC>
nnoremap <leader>n :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>
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
