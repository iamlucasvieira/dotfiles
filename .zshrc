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
)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
