alias emacs='LC_CTYPE=zh_CN.UTF-8 emacs'
alias em='emacsclient -t -a ""'  #在终端中开启emacs
alias emc='LC_CTYPE=zh_CN.UTF-8 emacsclient -nc -a ""'  #启动emacs图形界面
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'LC_CTYPE=zh_CN.UTF-8 emacsclient -a ""'; else echo 'vi'; fi)"
export FCEDIT="$EDITOR"
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"

if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
else 
    export BROWSER=links
fi


export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export PATH="/usr/lib/smlnj/bin:$PATH"
export SMLNJ_HOME=/usr/lib/smlnj/
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
