  " fzf file fuzzy search that respects .gitignore
  " If in git directory, show only files that are committed, staged, or unstaged
  " else use regular :Files
  " Mapped to ctrl P

  " Ranger file explorer
  let g:ranger_replace_netrw = 1 " open ranger when vim open a directory instead of netrw
  let g:ranger_map_keys = 0 " disable <leader>f
  let g:ranger_command_override = 'ranger --confdir='.$HOME.'/.config/nvim/ranger'

  " Hide status bar while using fzf commands                                                                          
  if has('nvim') || has('gui_running')                                                                                
    autocmd! FileType fzf                                                                                             
    autocmd  FileType fzf set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2                               
  endif    

  " Centered floating window for fzf
  let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

"  let g:auto_save        = 0
"  let g:auto_save_silent = 1
"  let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]
