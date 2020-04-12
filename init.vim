" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
  " coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
  " file
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " a script to install fzf on the system
  Plug 'junegunn/fzf.vim'                 " a plugin to use fzf fuzzy search within vim (mapped to ctrl+p below)
  Plug 'francoiscabrol/ranger.vim'        " use ranger file manager in vim (requires ranger installed)
  Plug 'rbgrouleff/bclose.vim'            " allow deleteing buffer without closing window (needed for ranger)
  
  " git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " lang
  Plug 'yuezk/vim-js'                     " JS Syntax support
  Plug 'mustache/vim-mustache-handlebars' " mustache/handbars syntax support
  Plug 'maxmellon/vim-jsx-pretty'         " JSX syntax support
  Plug 'cakebaker/scss-syntax.vim'        " SCSS/CSS syntax support
  Plug 'digitaltoad/vim-jade'             " Jade/Pug syntax support
  Plug 'leafgarland/typescript-vim'       " Typescript support

  " text
  Plug 'editorconfig/editorconfig-vim'    " Inherit settings from .editorconfig in the base directory
  Plug 'easymotion/vim-easymotion'        " faster navigation through document
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdcommenter'

  " theme
  Plug 'whatyouhide/vim-gotham'           " color scheme works in 16 colors :D
  Plug 'rafi/awesome-vim-colorschemes'    " collection of a bunch of color schemes

  " ui
  Plug 'vim-scripts/BufOnly.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'mhinz/vim-startify'               " Fancy nvim start screen with recent hist when starting with a plain 'nvim' command
  Plug 'ryanoasis/vim-devicons'           " use graphical icons throughout. Needs a Nerdfont to be loaded in terminal (like hack nerd font)

  Plug 'editorconfig/editorconfig-vim'    " Inherit settings from .editorconfig in the base directory
  Plug 'kassio/neoterm'                   " more managable shell
  Plug 'liuchengxu/vista.vim'             " needs ctags installed
  Plug 'junegunn/goyo.vim'                " zen mode
  Plug 'liuchengxu/vim-which-key'         " popup showing key press guides

  "util
  Plug 'lifepillar/vim-colortemplate'

call plug#end()


source $HOME/.config/nvim/util/functions.vim  " Functions used throughout config layers

" Config Layers:
source $HOME/.config/nvim/layers/ui.vim       " Top level UI and editor behavor
source $HOME/.config/nvim/layers/text.vim     " Text editing experience
source $HOME/.config/nvim/layers/lang.vim     " Language syntax
source $HOME/.config/nvim/layers/coc.vim      " Coc Configuration (autocomplete)
source $HOME/.config/nvim/layers/file.vim     " File browsing and management
source $HOME/.config/nvim/layers/git.vim      " Git integration and tools
source $HOME/.config/nvim/layers/theme.vim    " Theming and colors
source $HOME/.config/nvim/layers/startify.vim " Start screen
source $HOME/.config/nvim/layers/bindings.vim " Key bindings
