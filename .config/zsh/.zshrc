source $ZDOTDIR/aliases.zsh
# For the vim keybindings in zsh set the editor variable
export EDITOR='vim'

# Enable kitty with wayland
export KITTY_ENABLE_WAYLAND=1

# Set some variables here
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export ZSH_CUSTOM=$XDG_CONFIG_HOME/zsh
export LESS='-R --use-color -Dd+r$Du+b$'
export MANPAGER='nvim +Man!'

autoload -Uz compinit
compinit
zstyle ':completion::complete:*' gain-privileges 1


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
ZSH_AUTOSUGGEST_STRATEGY=(completion)

# For yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# This should be at the end of the .zshrc file
eval "$(starship init zsh)"
