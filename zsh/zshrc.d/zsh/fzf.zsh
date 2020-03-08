export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query="$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-history
bindkey '^r' fzf-select-history

function fzf-select-files() {
    BUFFER="${LBUFFER}$(rg --files |  fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}")"
    # BUFFER="${LBUFFER}$(rg --files | fzf)"
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N fzf-select-files
bindkey '^s' fzf-select-files

function rgnvim () {
    if [ $# -eq 0 ];then
        return
    fi
    nvim $(rg $@ | fzf --query="$LBUFFER" | awk -F':' '{print $1}')
}
