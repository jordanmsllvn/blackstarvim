" Custom lightline theme: {{{
let s:maxblue = '#40b4c4'
let s:hotpink = '#EB64B9'
let s:pearlaq = '#74dfc4'
let s:mustard = '#ffe261'
let s:white = '#ffffff'
let s:black = '#27212e'
let s:darker = '#221c29'
let s:blacker = '#1a1421'
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:pearlaq, s:blacker ], [ s:black, s:maxblue ] ]
let s:p.normal.right = [ [ s:maxblue, s:blacker], [ s:maxblue, s:blacker ] ]
let s:p.normal.middle = [ [ s:hotpink, s:blacker ] ]
let s:p.normal.error = [ [ s:white, s:black ] ]
let s:p.normal.warning = [ [ s:white, s:black ] ]
let s:p.insert.left = [ [ s:pearlaq, s:blacker ], [ s:black, s:hotpink ] ]
let s:p.insert.middle = [ [ s:black, s:maxblue ] ]
let s:p.visual.left = [ [ s:pearlaq, s:blacker ], [ s:black, s:mustard ] ]
let s:p.replace.left = [ [ s:white, s:black ], [ s:white, s:black ] ]
let s:p.inactive.right = [ [ s:white, s:black ], [ s:white, s:black ] ]
let s:p.inactive.left =  [ [ s:pearlaq, s:black ], [ s:white, s:black ] ]
let s:p.inactive.middle = [ [ s:white, s:black ] ]
let s:p.tabline.left = [ [ s:white, s:darker ] ]
let s:p.tabline.tabsel = [ [ s:black, s:maxblue ] ]
let s:p.tabline.middle = [ [ s:white, s:darker ] ]
let s:p.tabline.right = [[s:pearlaq, s:darker]]
let g:lightline#colorscheme#Custom#palette = lightline#colorscheme#fill(s:p)

"Set theme
let g:lightline.colorscheme = 'Custom'
colo lazerwave

" Remove carets status line carats by differing built in vim status bar
" backgrounds
highlight StatusLine   cterm=none ctermfg=white ctermbg=black guibg=#27212e
highlight StatusLineNC cterm=none ctermfg=white ctermbg=black guibg=#1aq421

" Uncomment the below for transparent background
"  hi Normal ctermbg=NONE guibg=NONE
"  hi NonText ctermbg=NONE guibg=NONE
"  hi SignColumn ctermbg=NONE guibg=NONE
"  hi LineNr ctermbg=NONE guibg=NONE
