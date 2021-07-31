let g:airline#themes#niscolor#palette = {}

let s:airline_info = [ g:niscolor_palette.white0[0], g:niscolor_palette.bg1[0], g:niscolor_palette.white0[1], g:niscolor_palette.bg1[1]]
let s:airline_statusline = [ g:niscolor_palette.white0[0], g:niscolor_palette.bg1[0], g:niscolor_palette.white0[1], g:niscolor_palette.bg1[1]]

function! s:color_map(fg, bg)
	let s:mode = [a:fg[0], a:bg[0], a:fg[1], a:bg[1]]
	return airline#themes#generate_color_map(s:mode, s:airline_info, s:airline_statusline)
endfunction

let g:airline#themes#niscolor#palette.normal = s:color_map(g:niscolor_palette.white0, g:niscolor_palette.blue2)
let g:airline#themes#niscolor#palette.insert = s:color_map(g:niscolor_palette.white0, g:niscolor_palette.red1)
let g:airline#themes#niscolor#palette.replace = s:color_map(g:niscolor_palette.white0, g:niscolor_palette.red0)
let g:airline#themes#niscolor#palette.inactive = s:color_map(g:niscolor_palette.white0, g:niscolor_palette.blue1)
let g:airline#themes#niscolor#palette.visual = s:color_map(g:niscolor_palette.white0, g:niscolor_palette.violet0)
let g:airline#themes#niscolor#palette.terminal = s:color_map(g:niscolor_palette.white0, g:niscolor_palette.red0)
let g:airline#themes#niscolor#palette.normal.airline_term = s:airline_statusline
let g:airline#themes#niscolor#palette.terminal.airline_term = s:airline_statusline
let g:airline#themes#niscolor#palette.visual.airline_term = s:airline_statusline
