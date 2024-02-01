# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
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

# Alises
# Set variable for custom configuration file and load any '.zsh' file inside .ZSH_CUSTOM directory
export zsh="$HOME/.ZSH_CUSTOM"
for config_file ("$zsh"/*.zsh(N)); do
  source "$config_file"
done
unset config_file

# Add scripts to path
export PATH=$PATH:$HOME/.local/bin/scripts

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Homebrew
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.2


# Create GOPATH alias and add bin to path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Inisialise startship (insalled with brew)
eval "$(starship init zsh)"

# fzf (insalled with brew)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide (insalled with brew)
eval "$(zoxide init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
