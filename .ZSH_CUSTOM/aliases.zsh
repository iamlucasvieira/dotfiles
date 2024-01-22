# Aliases for ZSH configuration
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias aliases="vi $zsh/aliases.zsh"
alias vimconfig="cd $HOME/.config/nvim && nvim ." 

# Copilot CLI aliases
alias "git?"="gh copilot suggest -t git"
alias "??"="gh copilot suggest -t shell"
alias "gh?"="gh copilot suggest -t gh"

# Ultralist aliases
alias u="ultralist"
alias uc="ultralist l group:context"
alias up="ultralist l group:project"
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

# nvim aliases
alias vi="nvim"
alias vim="nvim"

# dotfiles git 
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lazydot='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Fuck
eval $(thefuck --alias)

# exa
alias e="eza"
alias ea="eza -a"
alias el="eza -lah"
alias es="eza --color=auto --icons=auto"
