  let g:coc_status_warning_sign = ''
  let g:coc_status_error_sign = ''
  hi CocWarningSign ctermfg=blue 
  hi CocErrorSign ctermfg=red
  hi CocInfoSign ctermfg=yellow
  hi CocHintSign ctermfg=green

  set nobackup " needed for some plugins (namely coc)
  set nowritebackup " needed for some plugins (namely coc)
  
  " You will have bad experience for diagnostic messages when it's default 4000.
  set updatetime=300
  " don't give |ins-completion-menu| messages.
  set shortmess+=c
  " always show signcolumns
  set signcolumn=yes

  let g:coc_global_extensions=[
        \ 'coc-html',
        \ 'coc-sql', 
        \ 'coc-css',
        \ 'coc-snippets',
        \ 'coc-prettier',
        \ 'coc-template',
        \ 'coc-eslint',
        \ 'coc-emmet',
        \ 'coc-tsserver',
        \ 'coc-json',
        \ 'coc-highlight',
        \ 'coc-stylelint',
        \ 'coc-yaml',
        \ 'coc-yank',
        \ 'coc-pairs',
        \ 'coc-yaml',
        \ 'coc-vimlsp', 
        \ 'coc-tabnine',
        \ 'coc-lists',
        \ 'coc-post',
        \ 'coc-gitignore',
        \ 'coc-utils'
        \]

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
