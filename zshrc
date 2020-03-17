autoload -Uz compinit

zstyle ':completion:*' rehash true
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git virtualenv)

source $ZSH/oh-my-zsh.sh
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin/"
export PATH=$PATH:"/opt/dotnet"

alias "pip install"="pip install --user"
alias xopen=xdg-open
alias emacs="emacs -nw"
alias rm="rm -i"
alias x="ranger"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	if [[ $DISPLAY ]]; then
    		tmux attach -t default || tmux new -s default
	fi
fi

