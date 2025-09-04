export STARSHIP_CONFIG=~/.config/starship.toml

source ~/.antigen.zsh

antigen use oh-my-zsh

#antigen bundle git
antigen bundle pip
antigen bundle docker-compose
antigen bundle web-search
antigen bundle python
antigen bundle ssh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle command-not-found
antigen bundle zoxide

#antigen theme robbyrussell

antigen apply


if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
if [ -f ~/.zsh_functions ]; then
    . ~/.zsh_functions
fi
eval "$(zoxide init zsh --cmd cd)"
# source <(fzf --zsh)
eval "$(starship init zsh)"
set +o histexpand  # remove ! as history expansion


#PS1='%F{cyan}%B%~%b%f %F{green}%B>%b%f '

# export PATH="/c/tools/TinyTeX/bin/windows:$PATH"
# export PATH="$PATH:/c/Windows/System32"
# export PATH="$PATH:$HOME/.local/bin"

# bindkey "^H" backward-kill-word   # ctrl+backspace
# bindkey "5~" kill-word            # ctrl+del%                                                                                     
