
#==============================================================#
##          Aliases                                           ##
#==============================================================#

## common ##
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias zcompile_zshrc='zcompile ~/.zshrc'
alias c='clear'

# ls
alias la='ls -aF'
alias lla='ls -alF'
alias lal='ls -alF'
alias ls='ls'
alias ll='ls -la'
alias l.='ls -d .[a-zA-Z]*'

# grep ファイル名表示, 行数表示, バイナリファイルは処理しない
alias gre='grep -H -n -I --color=auto'

## application ##
# vi
alias vi="vim"
alias v="vim"

# tmux
alias t='\tmux -2'
alias tmux='\tmux -2'
alias ta='\tmux -2 attach -d'

# git
alias gis='git status'
alias gia='git add '
alias gic='git commit'

# docker
alias d='docker'

#==============================================================#
##          Global alias                                      ##
#==============================================================#

alias -g G='| grep '
alias -g W='| wc'
alias -g H='| head'
alias -g T='| tail'
alias -g C='| pbcopy'

#==============================================================#
##          Suffix                                            ##
#==============================================================#

alias -s {md,markdown,txt}="vim"
alias -s {html,gif,mp4}='x-www-browser'
alias -s py='python'
function extract() {
  case $1 in
    *.tar.gz|*.tgz) tar xzvf "$1";;
    *.tar.xz) tar Jxvf "$1";;
    *.zip) unzip "$1";;
    *.lzh) lha e "$1";;
    *.tar.bz2|*.tbz) tar xjvf "$1";;
    *.tar.Z) tar zxvf "$1";;
    *.gz) gzip -d "$1";;
    *.bz2) bzip2 -dc "$1";;
    *.Z) uncompress "$1";;
    *.tar) tar xvf "$1";;
    *.arj) unarj "$1";;
  esac
}
alias -s {gz,tgz,zip,lzh,bz2,tbz,Z,tar,arj,xz}=extract

