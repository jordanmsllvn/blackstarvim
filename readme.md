# BlackStar NeoVim Config


## Features
- Basic configuration without abstractions. Meant to be used as a base and hacked into your own perfect config.
- Polished Ranger integration for a more traditional netrw/vim-vinegar like project navigation experience.
- FZF based fuzzy search for project files, project grep, open buffers, and current file find.
- Space leader based workflow with key reference guide as you type (like Spacemacs/SpaceVim).
- Fancy start screen
- Easy ordinal buffer tab navigation with alt+number bindings
- Easy window navigation with numbered windows and <space> number navigation bindings
- <leader> based buffer management tools
- Polished autocomplete and language server integration with CoC
- Multiple Cursors
- Ctag browser and fuzzy search
- Popup windows for an extremely polished workflow
- Robust git integration with both fugitive and lazygit popup integration!
- No side-bar project explorers! (I consider this a feature rather than an omission)
- Toggleable Terminal
- Custom colorscheme throughout the editing and ui elements, with a little extra polishing of javascript, php, and markdown syntax. Inspired by the Lazerwave VSCode theme by Jared Jones: [](https://github.com/Jaredk3nt/laserwave).
- Heavy use of NerdFont glyphs to enhance ui and editing. 

## System requirements
- HomeBrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
- Kitty?
    brew install --cask kitty
- Oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- Python 
    brew install python
- Nvm 
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    Add this to your .zshrc:
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
- NeoVim 
    brew install neovim
    pip3 install pynvim
- Ranger (For project navigation)
    brew install ranger
- A NerdFont loaded into terminal [Get here](https://github.com/ryanoasis/nerd-fonts)
- Lazygit
    brew install lazygit
- Ctags
    brew install --HEAD universal-ctags/universal-ctags/universal-ctags
- NodeJs (For CoC autocompletion)
    brew install node
