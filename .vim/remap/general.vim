"REMAP
map ì $
nmap <CR> o<ESC>
nnoremap zq zA
map <C-y> "+y

nnoremap <TAB> v>
nnoremap <S-TAB> v<
vnoremap <TAB> >
vnoremap <S-TAB> <

nnoremap <leader>n :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap ' :<C-u>marks<CR>:normal! '
nnoremap m :<C-u>marks<CR>:normal! m

nnoremap <leader>l <C-W>l
nnoremap <leader>k <C-W>k
nnoremap <leader>j <C-W>j
nnoremap <leader>h <C-W>h
nnoremap <leader>\| <C-W>\|
nnoremap <leader>= <C-W>=

autocmd Filetype * inoremap <C-Space> <ESC>/<++><CR>"_c4l
