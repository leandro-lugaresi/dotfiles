#!/bin/sh
test -d /usr/share/fzf || return 0

export FZF_COMPLETION_TRIGGER='**'
# shellcheck disable=SC1091
. /usr/share/fzf/completion.zsh
# shellcheck disable=SC1091
. /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_COMMAND='fd --type f'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
--preview '[[  \$(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (bat --style=numbers --color=always {} ||
                  cat {}) 2> /dev/null'
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
"
