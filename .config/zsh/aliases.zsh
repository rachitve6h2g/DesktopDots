# Sway configuration
alias swaycon='vim $HOME/.config/sway'
alias gocon='cd $HOME/.config'
# Important aliases
alias vim="nvim"
alias vi="nvim"
alias oldvim="/usr/bin/vim"
alias ffetch="fastfetch"

# Aliases for colored outputs
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# Get image on the fly
alias kitcat="kitten icat"

# Get eza working
alias l='eza --icons --color'
alias ls='eza --icons --color'
alias ll='eza --icons --color -l'
alias la='eza --icons --color -al'

# Alias for colored helps 
# Also see the help function in .zshrc
# The aliases have been set keeping in mind 
# the oh-my-zsh issue about diagnostics.zsh
alias -g -- :B='-h 2>&1 | bat --language=help --style=plain'
alias -g -- :b='--help 2>&1 | bat --language=help --style=plain'

# alias for editing .zshrc files directly
alias -g -- ba="vim ~/.config/zsh/"

# For neovim sql
alias nvsql="nvim '+SQLua'"
