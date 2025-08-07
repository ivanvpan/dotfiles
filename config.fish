if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim='nvim'
alias ll='ls -l'
alias la='ls -la'

abbr -a k "kubectl"

fish_config theme choose "Catppuccin Macchiato"
fish_config prompt choose informative_vcs

set -Ux LS_COLORS $(vivid generate catppuccin-macchiato)
set -x EDITOR nvim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ivp/progs/google-cloud-sdk/path.fish.inc' ]; . '/home/ivp/progs/google-cloud-sdk/path.fish.inc'; end
