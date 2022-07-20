# These will be run first when I open my terminal
pfetch
curl wttr.in/\?0m
echo ""

# Setting my Editor and visual defualt
# Mostly for ranger and vifm
set -gx EDITOR vim
set -gx Visual vim

# This was already placed here
# I will figure out what to do with it later
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# My simple aliases that I use often
alias ls="ls -Alh --color=auto"

# This is for vi key bindings
fish_vi_key_bindings
