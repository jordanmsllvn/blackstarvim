set showtabline=2 
set splitbelow "new splits go right
set splitright "new splits go down
set hidden "enable background buffers
set termguicolors "use truecolor
set number "show number line on the left
set relativenumber "use number relative to cursor position
set linespace=4 "space stuff out a bit more vertically
set cursorline "Have a highlight on the line behind our cursor
set fillchars+=vert:│ "make the vertical divider solid instead of dashed
set mouse=a "enable mouse
set signcolumn=yes "gutter for signes on the left. always show.

set noshowmode "dont show the mode down in the left. Lightline takes care of that for us

" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv

" Jump to the last known position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" Lightline config
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#enable_devicons = 0
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#modified = ' '
let g:lightline = {
    \ 'active': { 'left': [ [ 'winnum' ], [ 'mode', 'paste' ], [ 'readonly', 'filename', 'dsmodified' ] ], 'middle': [] },
    \ 'inactive': { 'left': [ [ 'winnum' ], [ 'readonly', 'filename', 'dsmodified' ] ] },
    \ 'component': { 'winnum': '滛%{winnr()} ', 'dec': '', 'dsmodified': 'LightlineModified' },
    \ 'component_function': { 'dsmodified': 'LightlineModified', 'fileformat': 'LightlineFileformat', 'filetype': 'LightlineFiletype', 'mode': 'LightlineMode', 'fileencoding': 'LightlineFileEncoding' }
    \}

" cut some elements out on smaller windows
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightlineFileEncoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction
function! LightlineModified()
  return &modifiable && &modified ? '' : ''
endfunction
function! LightlineMode()
  return winwidth(0) > 70 ? lightline#mode() : ''
endfunction

let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline#bufferline#composed_number_map = {
\ 1:  ' 1 ', 2:  ' 2 ', 3: ' 3 ', 4: ' 4 ', 5:  ' 5 ',
\ 6:  ' 6 ', 7:  ' 7 ', 8:  ' 8 ', 9:  ' 9 ', 10: ' 10 ',
\ 11: ' 11 ', 12: ' 12 ', 13: ' 13 ', 14: ' 14 ', 15: ' 15 ',
\ 16: ' 16 ', 17: ' 17 ', 18: ' 18 ', 19: ' 19 ', 20: ' 20 '}

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['dec']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.component_raw = {'buffers': 1}

" vista config
let g:vista_executive_for = { 'c': 'coc' }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 50


" which key
let timeoutlen=250

" bclose doesnt need any bindings since its only used for ranger:
let g:bclose_no_plugin_maps=1

