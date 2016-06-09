# Git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Common vars
set -x EDITOR vim
set -x BROWSER chromium
set -x LANG en_US.UTF-8

# Secrets
source ~/.secrets.fish

# Path
source ~/.config/fish/path.fish

# virtualfish
eval (python -m virtualfish)
