#==============================================================#
##          Base Configuration                                ##
#==============================================================#

HOSTNAME="$HOST"
HISTSIZE=10000                     # メモリ内の履歴の数
SAVEHIST=100000                    # 保存される履歴の数
HISTORY_IGNORE="(ls|cd|pwd|zsh|exit|cd ..|clear)"
LISTMAX=1000                       # 補完リストを尋ねる数 (1=黙って表示, 0=ウィンドウから溢れるときは尋ねる)
KEYTIMEOUT=1

# autoload
autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
# define in post execution. because compinit is slow and plugin manager automatic load compinit.
# autoload -Uz compinit && compinit -u
autoload -Uz is-at-least

