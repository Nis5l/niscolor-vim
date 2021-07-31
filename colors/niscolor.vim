highlight clear
if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:colors_name = 'niscolor'

if (has('termguicolors') && &termguicolors) || has('gui_running')
	function! s:HL(group, fg, bg, ...)
		execute 'hi! '.a:group.' guifg='.a:fg[0].' guibg='.a:bg[0]
	endfunction
else
	function! s:HL(group, fg, bg, ...)
		execute 'hi! '.a:group.' ctermfg='.a:fg[1].' ctermbg='.a:bg[1]
	endfunction
endif

let s:palette = {
	\ 'bg0':     ['#161524', '16'],
	\ 'bg1':     ['#14132a', '17'],
	\ 'blue0':   ['#b4c9ff', '45'],
	\ 'blue1':   ['#637085', '67'],
	\ 'blue2':   ['#2e3b74', '25'],
	\ 'blue3':   ['#252c4c', '60'],
	\ 'pink0':   ['#b057af', '96'],
	\ 'pink1':   ['#f56ac7', '168'],
	\ 'violet0': ['#9f6fd5', '177'],
	\ 'violet1': ['#b45ad5', '170'],
	\ 'white0':  ['#d5dfe1', '254'],
	\ 'red0':    ['#f70252', '197'],
	\ 'red1':    ['#d22f70', '198'],
	\ 'yellow':  ['#f4d899', '230'],
	\ 'none':    ['NONE', 'NONE']
\ }

"https://neovim.io/doc/user/syntax.html

call s:HL('Normal', s:palette.white0, s:palette.bg0)
call s:HL('Terminal', s:palette.white0, s:palette.bg0)
call s:HL('EndOfBuffer', s:palette.white0, s:palette.bg0)

call s:HL('Comment', s:palette.blue1, s:palette.none)

call s:HL('Constant', s:palette.blue0, s:palette.none)
"String
"Character
"Number
"Boolean
"Float

call s:HL('Identifier', s:palette.violet1, s:palette.none)
"Function

call s:HL('Statement', s:palette.pink1, s:palette.none)
"call s:HL('lv16', s:palette.pink1, s:palette.none)
"Conditional
"Repeat
"Label
"Operator
"Keyword
"Exception

function! SynStack ()
    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
    endfor
endfunction
map gm :call SynStack()<CR>

call s:HL('PreProc', s:palette.pink1, s:palette.none)
"Include
"Define
"Macro
"PreCondit

call s:HL('Type', s:palette.violet0, s:palette.none)
"StorageClass
"Structure
"Typedef

call s:HL('Special', s:palette.pink0, s:palette.none)
"SpecialChar
"Tag
"Delimiter
"SpecialComment
"Debug

"Underlined

call s:HL('Error', s:palette.red0, s:palette.none)

call s:HL('Todo', s:palette.violet0, s:palette.none)

call s:HL('NonText', s:palette.blue3, s:palette.none)

call s:HL('Operator', s:palette.blue0, s:palette.none)
call s:HL('Delimiter', s:palette.pink1, s:palette.none)

call s:HL('Search', s:palette.white0, s:palette.blue1)
call s:HL('Visual', s:palette.white0, s:palette.blue3)

call s:HL('LineNr', s:palette.blue2, s:palette.bg1)
call s:HL('CursorLineNr', s:palette.blue0, s:palette.bg1)

call s:HL('LspDiagnosticsDefaultError', s:palette.red0, s:palette.none)
call s:HL('LspDiagnosticsDefaultWarning', s:palette.yellow, s:palette.none)

"let g:airline#themes#tokyonight#palette = {}

"                                     guifg            guibg                 ctermfg          ctermbg
"let s:airline_mode_normal = [s:palette.white0, s:palette.red0, 255, 255]

"let s:airline_info                = [ s:palette.white0, s:palette.bg1, 255, 255]
"let s:airline_statusline          = [ s:palette.white0, s:palette.bg1, 255, 255]

"function! s:color_map(mode)
"	return airline#themes#generate_color_map(a:mode, s:airline_info, s:airline_statusline)
"endfunction

"let g:airline#themes#tokyonight#palette.normal = s:color_map(s:airline_mode_normal)
"let g:airline#themes#tokyonight#palette.insert = s:tokyonight_color_map(s:airline_mode_insert)
"let g:airline#themes#tokyonight#palette.replace = s:tokyonight_color_map(s:airline_mode_replace)
"let g:airline#themes#tokyonight#palette.inactive = s:tokyonight_color_map(s:airline_mode_inactive)
"let g:airline#themes#tokyonight#palette.visual = s:tokyonight_color_map(s:airline_mode_visual)
"let g:airline#themes#tokyonight#palette.terminal = s:tokyonight_color_map(s:airline_mode_insert)
"let g:airline#themes#tokyonight#palette.normal.airline_term = s:airline_statusline
"let g:airline#themes#tokyonight#palette.terminal.airline_term = s:airline_statusline
"let g:airline#themes#tokyonight#palette.visual.airline_term = s:airline_statusline
