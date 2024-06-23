if status is-interactive
    # Commands to run in interactive sessions can go here
end

nvm use lts

starship init fish | source
# Setting PATH for Python 3.12
# The original version is saved in /Users/unicorn/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

set fish_emoji_width 2
fish_config theme choose "Rosé Pine Dawn"

# Tmux
abbr t tmux
abbr tc 'tmux attach'
abbr ta 'tmux attach -t'
abbr tad 'tmux attach -d -t'
abbr ts 'tmux new -s'
abbr tl 'tmux ls'
abbr tk 'tmux kill-session -t'
abbr mux tmuxinator

alias ls="eza --color=always --icons --group-directories-first"
alias la 'eza --color=always --icons --group-directories-first --all'
alias ll 'eza --color=always --icons --group-directories-first --all --long'
abbr l ll

# Editor
abbr vim nvim
abbr vi nvim
abbr v nvim .

alias lazygit "TERM=xterm-256color command lazygit"
abbr lg lazygit



# Setting PATH for Python 3.12
# The original version is saved in /Users/unicorn/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
