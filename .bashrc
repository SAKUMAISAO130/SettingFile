####################
# add user name color
####################
#PS1="\[\033[37m\]\h_\W_\u_\t \$\[\033[0m\] "


####################
# Add RVM to PATH for scripting
####################
export PATH="$PATH:$HOME/.rvm/bin"


####################
# git settings
####################
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\]╭─● \u@\h:\[\033[36m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]\n\[\033[37m\]╰─➤ '





####################
# vim settings
####################
############## 表示系 ###############
# 行番号
set number
# モード表示
set showmode
# タイトル表示
set title
# ルーラー表示
set ruler
# 対応する括弧を表示
set showmatch
# 対応する括弧のハイライト表示を5秒に設定
set matchtime=5
# 不可視文字を表示する
set list
# 折り返し禁止
set nowrap





####################$
# alias
####################$

alias la='ls -la'
alias ll='ls -la'


#vagrant
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vu='vagrant up'


#git
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'






