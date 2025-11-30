########################################
##             my .bashrc             ##
########################################

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"

export http_proxy=http://127.0.0.1:7897
export https_proxy=http://127.0.0.1:7897
export no_proxy=localhost,127.0.0.1

if [[ -x $(command -v eza) ]]; then
	alias ls='eza --icons'
	alias l='eza --icons --sort Name'
	alias ll='eza --icons --sort Name --long'
	alias lh='eza --icons --sort newest --group --long'
else
	alias ls='ls --color=auto'
	alias lh='ls -alhrt --time-style=long-iso'
fi