" JAVA SHORTCUTS

"" Remap

" Public class
autocmd Filetype java inoremap public<TAB> <ESC>:call CreateClass()<CR>

" Main
autocmd Filetype java inoremap main<TAB> public static void main (String[] args) <++>{<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>n"_c4l

" Constructor
autocmd Filetype java inoremap const<TAB> <ESC>:call CreateConstructor()<CR>?<++><CR>n"_c4l

" Function
autocmd Filetype java inoremap def<TAB> <++>(<++>){<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>nn"_c4l

" Shortcut
autocmd Filetype java inoremap <SPACE><SPACE> <ESC>/<++><CR>"_c4l

" If
autocmd Filetype java inoremap if<TAB> if (<++>){<CR><++><CR><BACKSPACE><BACKSPACE>} <ESC>?<++><CR>n"_c4l

" Else
autocmd Filetype java inoremap else<TAB> else {<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>"_c4l

" Elif
autocmd Filetype java inoremap elif<TAB> else if (<++>){<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>n"_c4l

" Switch
autocmd Filetype java inoremap switch<TAB> switch (<++>){<CR>case <++>:<++><CR><BACKSPACE><BACKSPACE><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>nn"_c4l

" While
autocmd Filetype java inoremap while<TAB> while (<++>){<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>n"_c4l

" For
autocmd Filetype java inoremap for<TAB> for (<++>){<CR><++><CR><BACKSPACE><BACKSPACE>}<ESC>?<++><CR>n"_c4l

" Print
autocmd Filetype java inoremap print<TAB> System.out.print<++>(<++>);<ESC>?<++><CR>n"_c4l

" Round brackets
autocmd Filetype java inoremap ( (<++>)<++><ESC>?<++><CR>n"_c4l

" Square brackets
autocmd Filetype java inoremap [ [<++>]<++><ESC>?<++><CR>n"_c4l

" Braces
autocmd Filetype java inoremap { {<++>}<++><ESC>?<++><CR>n"_c4l

" Single quotation mark
autocmd Filetype java inoremap ' '<++>'<++><ESC>?<++><CR>n"_c4l

" Double quotation mark
autocmd Filetype java inoremap " "<++>"<++><ESC>?<++><CR>n"_c4l

" Comments layout
autocmd Filetype java inoremap com<TAB> /**<CR><++><CR><BACKSPACE>/<ESC>?<++><CR>"_c4l

" Function used for the creation of the class
function! CreateClass()
    let classname = expand('%:t:r')

    exe "normal! apublic class " . classname . " {\n\n}"
    exe "normal! ki\t"

endfunction

" COSTRUTTORE AUTOMATICO

function! CreateConstructor()
	let classname = expand('%:t:r')

	exe "normal! apublic " . classname . " (<++>) {\n<++>\n}"
endfunction

" Fold
autocmd Filetype java set foldmethod=expr
autocmd Filetype java set foldexpr=FoldJava(v:lnum)

" Function that create the folds
function! FoldJava(lnum)
	if getline(a:lnum)=~'^\t\(private\|public\|protected\).*{$'
		return '1'
	endif

	if getline(v:lnum) =~ '^\t}$'
		return '<1'
	endif

	return '-1'
endfunction
