highlight clear
if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:colors_name = 'niscolor'

function! s:HL(group, fg, bg, ...)
	execute 'hi! '.a:group.' guifg='.a:fg.' guibg='.a:bg
endfunction

let s:palette = {
	\ 'bg0': '#161524',
	\ 'bg1': '#14132a',
	\ 'blue0': '#b4c9ff',
	\ 'blue1': '#637085',
	\ 'blue2': '#2e3b74',
	\ 'blue3': '#252c4c',
	\ 'pink0': '#b057af',
	\ 'pink1': '#f56ac7',
	\ 'violet0': '#9f6fd5',
	\ 'violet1': '#b45ad5',
	\ 'white0': '#d5dfe1',
	\ 'red0': '#f70252',
	\ 'red1': '#d22f70',
	\ 'yellow': '#f4d899',
	\ 'none': 'NONE'
\ }

"https://neovim.io/doc/user/syntax.html

call s:HL('Normal', s:palette.white0, s:palette.bg0)
call s:HL('Terminal', s:palette.white0, s:palette.bg0)
call s:HL('EndOfBuffer', s:palette.white0, s:palette.bg0)

call s:HL('Comment', s:palette.blue1, 'NONE')

call s:HL('Constant', s:palette.blue0, 'NONE')
"String
"Character
"Number
"Boolean
"Float

call s:HL('Identifier', s:palette.violet1, 'NONE')
"Function

call s:HL('Statement', s:palette.pink1, 'NONE')
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

call s:HL('PreProc', s:palette.pink1, 'NONE')
"Include
"Define
"Macro
"PreCondit

call s:HL('Type', s:palette.violet0, 'NONE')
"StorageClass
"Structure
"Typedef

call s:HL('Special', s:palette.pink0, 'NONE')
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

"call s:HL('op_lv15', s:palette.red1, s:palette.none)
"call s:HL('lv15c', s:palette.red1, s:palette.none)
