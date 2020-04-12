" Leader mapping
" ------------
noremap <Space> <Nop>
let mapleader = "\<space>"
let maplocalleader = "\<space>"
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>
call which_key#register('<Space>', "g:which_key_map")


" Window navigation by number
" -----------------------
let i = 1
while i <= 8
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile
let g:which_key_map =  {
  \'1': 'Window 1',
  \'2': 'Window 2',
  \'3': 'Window 3',
  \'4': 'Window 4',
  \'5': 'Window 5',
  \'6': 'Window 6',
  \'7': 'Window 7',
  \'8': 'Window 8',
  \}

" Window operations by leader
" -----------------------
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wH <c-w>H
nnoremap <leader>wJ <c-w>J
nnoremap <leader>wK <c-w>K
nnoremap <leader>wL <c-w>L
nnoremap <leader>w- :sp<cr>
nnoremap <leader>w<Bslash> :vs<cr>
nmap <leader>wz :Goyo<CR>
nmap <F6> :Goyo<CR>
let g:which_key_map.w = { 
      \'name' : '+window', 
      \'h': 'Navigate left',
      \'j': 'Navigate down',
      \'k': 'Navigate up',
      \'l': 'Navigate right',
      \'H': 'Move window left',
      \'J': 'Move window down',
      \'K': 'Move window up',
      \'L': 'Move window right',
      \'-': 'Horizontal split',
      \'\': 'Vertical split',
      \'z': 'Zen mode'
      \}

"Faster ESC.
"-------------
inoremap jk <ESC>
inoremap kj <ESC>

" Vista
" -------------
" Floating tag finder

nnoremap  <Leader>vf  :Vista finder coc<cr>
nmap <F8> :Vista!!<CR>
nmap <Leader>vv :Vista!!<CR>
let g:which_key_map.v = { 
      \'name' : '+vista', 
      \'v': 'Toggle Vista',
      \'f': 'Open Vista fuzzy finder',
      \}


" NERD Commenter
" --------------
" Toggle comments in visual or normal mode
nnoremap <leader>cc :call NERDComment(0,"toggle")<cr>
vnoremap <leader>cc :call NERDComment(1,"toggle")<cr>
" Toggle a sexy comment
nnoremap <leader>cs :call NERDComment(0,"sexy")<cr>
vnoremap <leader>cs :call NERDComment(1,"sexy")<cr>
" append a  comment
nnoremap <leader>ca :call NERDComment(0,"append")<cr>
vnoremap <leader>ca :call NERDComment(1,"append")<cr>
" uncomment section
nnoremap <leader>cu :call NERDComment(0,"uncomment")<cr>
vnoremap <leader>cu :call NERDComment(1,"uncomment")<cr>
" invert comments
nnoremap <leader>ci :call NERDComment(0,"invert")<cr>
vnoremap <leader>ci :call NERDComment(1,"invert")<cr>
" comment section
nnoremap <leader>cx :call NERDComment(0,"comment")<cr>
vnoremap <leader>cx :call NERDComment(1,"comment")<cr>
let g:which_key_map.c = { 
      \'name' : '+comments', 
      \'c': 'Toggle comment',
      \'s': 'Sexy comment',
      \'a': 'Append comment',
      \'u': 'Uncomment',
      \'i': 'Invert comments',
      \'x': 'Comment section'
      \}


"Git
"---------------
nnoremap  <Leader>gs  :Git<cr>
nnoremap  <Leader>gw  :Gwrite<cr>
nnoremap  <Leader>ga  :Git add -- .<cr>
nnoremap  <Leader>gd  :Gdiffsplit<cr>
nnoremap  <Leader>gc  :Git commit<cr>
nnoremap  <Leader>gP  :Git push<cr>
nnoremap  <Leader>gp  :Gpull<cr>
nnoremap  <Leader>gm  :Git merge_tool<cr>
nnoremap  <Leader>gb  :Git blame<cr>
nnoremap  <Leader>gB  :GBrowse<cr>
" Lazygit
nnoremap <silent> <Leader>gg :call ToggleLazyGit()<CR>
"
" browse current line on web
"nnoremap  <Leader>gB  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
"nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
"nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>

let g:which_key_map.g = { 
      \'name' : '+git', 
      \'g': 'Open Lazygit',
      \'s': 'Git status',
      \'w': 'Write and stage current file',
      \'a': 'Stage all changes',
      \'d': 'Diff in split window',
      \'c': 'Commit',
      \'P': 'Push',
      \'p': 'Pull',
      \'m': 'Merge tool',
      \'b': 'Blame',
      \'B': 'Browse this file on remote (web)',
      \}

" File
" -------------
" Ranger
nnoremap - :Ranger<CR>  
nnoremap <leader>or :Ranger<CR>
nnoremap <leader>og :Rg<Space>
" Fuzzy search
nnoremap <leader>of (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
let g:which_key_map.o = { 
      \'name' : '+open', 
      \'r': 'Browse with Ranger',
      \'f': 'Fuzzy Finder',
      \'g': 'Find in project (Ripgrep)'
      \}


" Buffer
" ----------------
nmap <A-1> <Plug>lightline#bufferline#go(1)
nmap <leader>b1 <Plug>lightline#bufferline#go(1)
nmap <A-2> <Plug>lightline#bufferline#go(2)
nmap <leader>b2 <Plug>lightline#bufferline#go(2)
nmap <A-3> <Plug>lightline#bufferline#go(3)
nmap <leader>b3 <Plug>lightline#bufferline#go(3)
nmap <A-4> <Plug>lightline#bufferline#go(4)
nmap <leader>b4 <Plug>lightline#bufferline#go(4)
nmap <A-5> <Plug>lightline#bufferline#go(5)
nmap <leader>b5 <Plug>lightline#bufferline#go(5)
nmap <A-6> <Plug>lightline#bufferline#go(6)
nmap <leader>b6 <Plug>lightline#bufferline#go(6)
nmap <A-7> <Plug>lightline#bufferline#go(7)
nmap <leader>b7 <Plug>lightline#bufferline#go(7)
nmap <A-8> <Plug>lightline#bufferline#go(8)
nmap <leader>b8 <Plug>lightline#bufferline#go(8)
nmap <A-9> <Plug>lightline#bufferline#go(9)
nmap <leader>b9 <Plug>lightline#bufferline#go(9)
nmap <A-0> <Plug>lightline#bufferline#go(10)
nmap <leader>b0 <Plug>lightline#bufferline#go(10)
nmap <leader>bc :bd<cr>
nmap <leader>bC :bd!<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bo :BufOnly<cr>
nmap <leader>bf :Buffers<cr>

let g:which_key_map.b = { 
      \'name' : '+buffers', 
      \'f': 'Find open buffer',
      \'1': 'Goto buffer 1',
      \'2': 'Goto buffer 2',
      \'3': 'Goto buffer 3',
      \'4': 'Goto buffer 4',
      \'5': 'Goto buffer 5',
      \'6': 'Goto buffer 6',
      \'7': 'Goto buffer 7',
      \'8': 'Goto buffer 8',
      \'9': 'Goto buffer 9',
      \'0': 'Goto buffer 10',
      \'p': 'Goto prev buffer',
      \'n': 'Goto next buffer',
      \'c': 'Close current buffer',
      \'C': 'Force close current buffer',
      \'o': 'Close all other buffers (only)'
      \}

" COC
" ---------------
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use <TAB> for selections ranges. coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

"--------------------------------------------------------

" Navigation
" --------------------
" GoTo code navigation.
nmap <leader>nd <Plug>(coc-definition)
nmap <leader>nt <Plug>(coc-type-definition)
nmap <leader>ni <Plug>(coc-implementation)
nmap <leader>nr <Plug>(coc-references)
" diagnostic navigation
nmap <leader>np <Plug>(coc-diagnostic-prev)
nmap <leader>nn <Plug>(coc-diagnostic-next)
" documentation
nmap <leader>nc :call <SID>show_documentation()<CR>
" fuzzy find in buffer
nmap <leader>nf :BLines<cr>
let g:which_key_map.n = { 
      \'name' : '+navigation', 
      \'f': 'Find in buffer',
      \'d': 'Goto definition (of under cursor)',
      \'t': 'Goto type definition (of under cursor)',
      \'i': 'Goto implementation (of under cursor)',
      \'r': 'Goto references (of under cursor)',
      \'c': 'Show documentation (of under cursor)',
      \'p': 'Goto prev error',
      \'n': 'Goto next error',
      \}

" TEXT
" ---------------
" Formatting selected code.
xmap <leader>tf  <Plug>(coc-format-selected)
nmap <leader>tf  <Plug>(coc-format-selected)
" Symbol renaming.
nmap <leader>tr <Plug>(coc-rename)
" Apply AutoFix to problem on the current line.
nmap <leader>tx <Plug>(coc-fix-current)

let g:which_key_map.t = { 
      \'name' : '+text', 
      \'f': 'Format selected',
      \'r': 'Rename symbol (under cursor)',
      \'x': 'Autofix current line',
      \}


" SHELL
" ------------------
nnoremap <silent><A-t> :call TermToggle(12)<CR>
inoremap <silent><A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <silent><A-t> <C-\><C-n>:call TermToggle(12)<CR>
