" C SHORTCUTS

"" REMAP

" Shortcut
autocmd Filetype c inoremap <SPACE><SPACE> <ESC>/<++><CR>"_c4l

" Main
autocmd Filetype c inoremap main<TAB> int main () {<CR><++><CR><CR><BACKSPACE>return 0;<CR><BACKSPACE>}<ESC>?<++><CR>"_c4l

" Function
autocmd Filetype c inoremap def<TAB> <++> (<++>) {<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>nn"_c4l

" If
autocmd Filetype c inoremap if<TAB> if (<++>) {<CR><++><CR><BACKSPACE><BACKSPACE>}<++><ESC>?<++><CR>nn"_c4l

" Else
autocmd Filetype c inoremap else<TAB> else {<CR><++><CR><BACKSPACE><BACKSPACE>}<++><ESC>?<++><CR>n"_c4l

" Elif
autocmd Filetype c inoremap elif<TAB> else if (<++>) {<CR><++><CR><BACKSPACE><BACKSPACE>}<++><ESC>?<++><CR>nn"_c4l

" While
autocmd Filetype c inoremap while<TAB> while (<++>) {<CR><++><CR><BACKSPACE><BACKSPACE>}<CR><++><ESC>?<++><CR>nn"_c4l

" For
autocmd Filetype c inoremap for<TAB> for (<++>; <++>; <++>) {<CR><++><CR><BACKSPACE><BACKSPACE>}<CR><++><ESC>?<++><CR>nnnn"_c4l

" Switch
autocmd Filetype c inoremap switch<TAB> switch (<++>) {<CR>case <++>: <++><CR><BACKSPACE><BACKSPACE><BACKSPACE><BACKSPACE>}<++><ESC>?<++><CR>nnn"_c4l

" Round brackets
autocmd Filetype c inoremap ( (<++>)<++><ESC>?<++><CR>n"_c4l

" Square brackets
autocmd Filetype c inoremap [ [<++>]<++><ESC>?<++><CR>n"_c4l

" Braces
autocmd Filetype c inoremap { {<++>}<++><ESC>?<++><CR>n"_c4l

" Single quotation mark
autocmd Filetype c inoremap ' '<++>'<++><ESC>?<++><CR>n"_c4l

" Double quotation mark
autocmd Filetype c inoremap " "<++>"<++><ESC>?<++><CR>n"_c4l
