# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh configurations.
export ZSH="$HOME/.oh-my-zsh" # Path to installation.
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
plugins=(
 git
 zsh-syntax-highlighting
 zsh-autosuggestions
 zsh-completions
)
autoload -U compinit && compinit  # command for zsh-completions
source $ZSH/oh-my-zsh.sh

# User configuration 
# Aditional aliases at cd ~/.oh-my-zsh/custom
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias aliases="nvim ~/.oh-my-zsh/custom/aliases.zsh"

alias u="ultralist"
alias uc="ultralist l due:agenda group:context"
alias up="ultralist l due:agenda group:project"
alias tod="ultralist l group:project due:tod"
alias tom="ultralist l group:project due:tom"
alias mon="ultralist l group:project due:mon"
alias tue="ultralist l group:project due:tue"
alias wed="ultralist l group:project due:wed"
alias thu="ultralist l group:project due:thu"
alias fri="ultralist l group:project due:fri"
alias c="ultralist l completed:tod"

# pipe ultralist into fzf for ultra-fast searching of tasks!
alias uf="script -c \"ultralist l\"  < /dev/null | fzf --ansi"
alias vi="nvim"

# dotfiles git 
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Homebrew
eval source <(/opt/homebrew/bin/starship init zsh --print-full-init)
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.2

# Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

