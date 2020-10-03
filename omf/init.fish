set -x EDITOR vim
set -x VISUAL $EDITOR
set -x WEDITOR code

set -x DOTFILES ~/.dotfiles
set -x PROJECTS ~/dev

# for f in $DOTFILES/*/functions
#     set -p fish_function_path $f
# end

# for f in $DOTFILES/*/conf.fish
#     source $f
# end

if test -f ~/.localrc.fish
    source ~/.localrc.fish
end
