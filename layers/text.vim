filetype plugin indent on
set encoding=UTF-8
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2  
set breakindent " enable indentation on line break
set breakindentopt=shift:2,min:40,sbr " indent by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
set showbreak= " show a character at the beggining of indent
set linebreak " wrap only between words and never split a word in half
set autoindent "auto indent when new line
set smartindent "not sure exactly what this does but its supposed to enhance auto indenting?
set matchpairs+=<:> "Add html brackets to pair matching
set clipboard^=unnamed,unnamedplus

let g:AutoPairsFlyMode = 0
let g:AutoPairsMultilineClose = 0

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

" Disable Nerdcommenter's default mapping
let g:NERDCreateDefaultMappings = 0
