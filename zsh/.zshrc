# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Enter tmux automatically
if [ "$TMUX" = "" ]; then tmux; fi

# Theme, although not actually used. See starship config
ZSH_THEME="gallois"

plugins=(
	# git motherfucker
	git
	
	# https://github.com/zsh-users/zsh-syntax-highlighting.git
	zsh-syntax-highlighting

	# https://github.com/popstas/zsh-command-time.git
	command-time

	#https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode
	vi-mode
)

# Sauce
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/themes.zsh
source ~/.oh-my-zsh/custom/plugins/command-time/command-time.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Starship cross-shell prompt
eval "$(starship init zsh)"
