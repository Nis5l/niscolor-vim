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

let g:niscolor_palette = {
	\ 'bg0':     ['#171423', '16'],
	\ 'bg1':     ['#14132a', '17'],
	\ 'bg2':     ['#1b1a38', '17'],
	\ 'blue0':   ['#b4c9ff', '45'],
	\ 'blue1':   ['#637085', '67'],
	\ 'blue2':   ['#2e3b74', '25'],
	\ 'blue3':   ['#252c4c', '60'],
	\ 'pink0':   ['#b057af', '96'],
	\ 'pink1':   ['#d85daf', '168'],
	\ 'violet0': ['#9f6fd5', '177'],
	\ 'violet1': ['#b45ad5', '170'],
	\ 'white0':  ['#c6d1d3', '254'],
	\ 'red0':    ['#f70252', '197'],
	\ 'red1':    ['#d22f70', '198'],
	\ 'yellow':  ['#f4d899', '230'],
	\ 'none':    ['NONE', 'NONE']
\ }

call s:HL('Normal', g:niscolor_palette.white0, g:niscolor_palette.bg0)
call s:HL('Terminal', g:niscolor_palette.white0, g:niscolor_palette.bg0)
call s:HL('EndOfBuffer', g:niscolor_palette.white0, g:niscolor_palette.bg0)
call s:HL('VertSplit', g:niscolor_palette.blue2, g:niscolor_palette.bg0)

call s:HL('Comment', g:niscolor_palette.blue1, g:niscolor_palette.none)
call s:HL('Constant', g:niscolor_palette.blue0, g:niscolor_palette.none)
call s:HL('Identifier', g:niscolor_palette.violet1, g:niscolor_palette.none)
call s:HL('Statement', g:niscolor_palette.pink1, g:niscolor_palette.none)
call s:HL('PreProc', g:niscolor_palette.pink1, g:niscolor_palette.none)
call s:HL('Type', g:niscolor_palette.violet0, g:niscolor_palette.none)
call s:HL('Special', g:niscolor_palette.pink0, g:niscolor_palette.none)
call s:HL('Error', g:niscolor_palette.red0, g:niscolor_palette.none)
call s:HL('Todo', g:niscolor_palette.violet0, g:niscolor_palette.none)
call s:HL('NonText', g:niscolor_palette.blue3, g:niscolor_palette.none)
call s:HL('Operator', g:niscolor_palette.blue0, g:niscolor_palette.none)
call s:HL('Delimiter', g:niscolor_palette.pink1, g:niscolor_palette.none)
call s:HL('Search', g:niscolor_palette.white0, g:niscolor_palette.blue1)
call s:HL('Visual', g:niscolor_palette.white0, g:niscolor_palette.blue3)
call s:HL('LineNr', g:niscolor_palette.blue2, g:niscolor_palette.bg1)
call s:HL('CursorLineNr', g:niscolor_palette.blue0, g:niscolor_palette.bg1)
call s:HL('SignColumn', g:niscolor_palette.white0, g:niscolor_palette.bg2)

call s:HL('LspDiagnosticsDefaultError', g:niscolor_palette.red0, g:niscolor_palette.none)
call s:HL('LspDiagnosticsDefaultWarning', g:niscolor_palette.yellow, g:niscolor_palette.none)
call s:HL('LspDiagnosticsDefaultHint', g:niscolor_palette.white0, g:niscolor_palette.none)

call s:HL('NvimTreeFolderName', g:niscolor_palette.violet0, g:niscolor_palette.none)
call s:HL('NvimTreeOpenedFolderName', g:niscolor_palette.pink1, g:niscolor_palette.none)

call s:HL('NvimTreeOpenedFile', g:niscolor_palette.blue2, g:niscolor_palette.none)
call s:HL('NvimTreeSpecialFile', g:niscolor_palette.blue1, g:niscolor_palette.none)
call s:HL('NvimTreeExecFile', g:niscolor_palette.blue0, g:niscolor_palette.none)
call s:HL('Pmenu', g:niscolor_palette.blue0, g:niscolor_palette.bg2)
