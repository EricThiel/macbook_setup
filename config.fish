if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x STARSHIP_CONFIG ~/.config/starship.toml

# Disable the fish greeting message
set fish_greeting ""

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# `ls` → `ls -laG` abbreviation
abbr -a -g ls ls -laG

# `ls` → `exa` abbreviation
# Requires `brew install exa`
if type -q eza
  abbr --add -g ls 'eza --long --classify --all --header --git --no-user --tree --level 1'
end

# `cat` → `bat` abbreviation
# Requires `brew install bat`
if type -q bat
  abbr --add -g cat 'bat'
end

# `rm` → `trash` abbreviation (moves files to the trash instead of deleting them)
# Requires `brew install trash`
if type -q trash
  abbr --add -g rm 'trash'
end

abbr -a -g exi exit

# Run starship
starship init fish | source
