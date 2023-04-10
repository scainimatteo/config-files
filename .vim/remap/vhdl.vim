" VHDL

" Shortcuts command
autocmd Filetype vhdl inoremap <Space><Space> <ESC>/<++><CR>"_c4l

" Libraries
autocmd Filetype vhdl inoremap lib<TAB> library IEEE;<CR>use IEEE.STD_LOGIC_1164.ALL;<CR><CR>

" Entity
autocmd Filetype vhdl inoremap ent<TAB> <ESC>:call MakeEntity()<CR>

" Architecture
autocmd Filetype vhdl inoremap arch<TAB> <ESC>:call MakeArchitecture()<CR>

" Port
autocmd Filetype vhdl inoremap port<TAB> port(<CR><TAB><++><CR>);<ESC>?<++><CR>"_c4l

" Process
autocmd Filetype vhdl inoremap proc<TAB> process(<++>)<CR><++><CR>begin<CR><++><CR>end process;<ESC>?<++><CR>nn"_c4l

" Component
autocmd Filetype vhdl inoremap comp<TAB> component <++> is<CR><++><CR>end component;<ESC>?<++><CR>n"_c4l

" Signal
autocmd Filetype vhdl inoremap sign<TAB> signal <++> : <++>;<ESC>?<++><CR>n"_c4l
" Costant
autocmd Filetype vhdl inoremap const<TAB> constant <++> : <++>;<ESC>?<++><CR>n"_c4l
" Variable
autocmd Filetype vhdl inoremap var<TAB> variable <++> : <++>;<ESC>?<++><CR>n"_c4l

" Generic
autocmd Filetype vhdl inoremap gener<TAB> generic (<CR><TAB><++> : <++> := <++><CR>);<ESC>?<++><CR>nn"_c4l

" For
autocmd Filetype vhdl inoremap for<TAB> for <++> in <++> to <++> loop<CR><++><CR>end loop;<ESC>?<++><CR>nnn"_c4l

" FSM
autocmd Filetype vhdl inoremap FSM<TAB> <ESC>:call MakeFSM()<CR>
autocmd Filetype vhdl inoremap FSMA<TAB> <ESC>:call MakeFSMArch()<CR>

" Types
autocmd Filetype vhdl inoremap sl<TAB> std_logic;
autocmd Filetype vhdl inoremap sv<TAB> std_logic_vector(<++> downto <++>);<ESC>?<++><CR>n"_c4l
autocmd Filetype vhdl inoremap isl<TAB> in std_logic;
autocmd Filetype vhdl inoremap osl<TAB> out std_logic;
autocmd Filetype vhdl inoremap isv<TAB> in std_logic_vector(<++> downto <++>);<ESC>?<++><CR>n"_c4l
autocmd Filetype vhdl inoremap osv<TAB> out std_logic_vector(<++> downto <++>);<ESC>?<++><CR>n"_c4l

" Assertion
autocmd Filetype vhdl inoremap ass<TAB> assert(<++>) report "<++>" SEVERITY FAILURE;<ESC>?<++><CR>n"_c4l


" FUNCTIONS

" Make an entity called like the file
function! MakeEntity()
	" Name of the file without the extension
	let entityname = expand('%:t:r')
	" Write to the file
	exe "normal! ientity " . entityname . " is\nend " . entityname . ";"
	exe "normal! 0x"
	exe "normal! O\t"
	startinsert
endfunction

" Make an architecture for the current file
function! MakeArchitecture()
	" Name of the file without the extension
	let entityname = expand('%:t:r')
	" Write to the file
	exe "normal! iarchitecture  of " . entityname . " is\nbegin\n<++>\nend architecture;"
	exe "normal! 03ke2l"
	startinsert
endfunction

" Make a FSM skeleton

function! MakeFSM()
	" Name of the file without the extension
	let entityname = expand('%:t:r')
	" Write to the file
	exe "normal! ientity " . entityname . " is\nport(\ni:  in std_logic;\nclk:  in std_logic;\nrst:  in std_logic;\no:  out std_logic\n);\nend " . entityname . ";\n\narchitecture FSM of " . entityname . " is\ntype state_type is ();\nsignal next_state, current_state: state_type;\nbegin\n<++>\nend FSM;"
	exe "normal! 4k0f(l"
	startinsert
endfunction

function! GetStates()
	mark `
	exe "keepjumps normal! gg/type state_type"
    let curline = getline('.')
	let par = split(curline, '(')
	let par2 = split(par[len(par) - 1], ');')
	let states = split(par2[0], ',')
	normal ``
	return states
endfunction

function! MakeFSMArch()
	let states = GetStates()
	" State Register - D Flip Flop
	exe "normal! istate_reg: process(clk, rst)\nbegin\nif rst='1' then\ncurrent_state <= " . states[0] . ";\nelsif rising_edge(clk) then\ncurrent_state <= next_state;\nend if;\nend process;\n\n"
	" Next State Function
	exe "normal! idelta: process(current_state, i)\nbegin\ncase current_state is\n"
	for state in states
		exe "normal! iwhen " . state . " =>\nif i = '0' then\nnext_state <= <++>;\nelse\nnext_state <= <++>;\nend if;\n"
	endfor
	exe "normal! iend case;\nend process;\n\n"
	" Exit Function
	exe "normal! ilambda: process(current_state)\nbegin\ncase current_state is\n"
	for state in states
		exe "normal! iwhen " . state . " =>\no <= <++>;\n"
	endfor
	exe "normal! iend case;\nend process;"
	exe "normal! {{/<++>\"_d4l"
	startinsert
endfunction
