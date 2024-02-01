# Function to activate a pyenv environment
function py() {
    env_name=$(pyenv virtualenvs | awk '{print $1}' | fzf --height=10 --layout=reverse --border)
    if [ -n "$env_name" ]; then
        echo "Activating $env_name..."
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
        pyenv activate "$env_name"
    else
        echo "No environment selected."
    fi
}

