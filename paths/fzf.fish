#!/usr/bin/env fish

set -Ux FZF_COMPLETION_TRIGGER "**"
set -Ux FZF_DEFAULT_COMMAND='fd --type f'

set -Uxa FZF_DEFAULT_OPTS "
--preview '[[  \$(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (bat --style=numbers --color=always {} ||
                  cat {}) 2> /dev/null'
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
"
