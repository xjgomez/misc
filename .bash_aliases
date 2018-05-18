function mv_safe()
{
    DATE_DIR=`date +"%y_%m_%d"`
    mkdir -p $HOME/$2/$DATE_DIR

    if [ -f $HOME/$2/$DATE_DIR/$1 ];
    then
        DATE_FILE=`date +"%H_%M_%S"`
        mv $1 $HOME/$2/$DATE_DIR/$1_$DATE_FILE
    else
        mv $1 $HOME/$2/$DATE_DIR/
    fi
}

function work()
{
    if test -n "$1"; then
        mv_safe $1 .work
    fi
}

function trash()
{
    if test -n "$1"; then
        mv_safe $1 .trash
    fi
}

function safexport
{
    export $1=$2
}

function psg()
{
    ps -eo comm,pid,ppid,psr,ruid,ruser,euser,lstart,sz,pri,sched,ni,policy,pri,stat,wchan | head -n 1
    ps -eo comm,pid,ppid,psr,ruid,ruser,euser,lstart,sz,pri,sched,ni,policy,pri,stat,wchan | grep $1
}

alias ..="cd .."
alias me="cd ~ && ls"
alias vib="vi $HOME/.bashrc"
alias refresh="source $HOME/.bashrc"
alias cdtrash="cd $HOME/.trash && ls"
alias cdwork="cd $HOME/.work && ls"
alias gfind="sudo find / | grep"
alias lfind="sudo find . | grep"
alias hgrep="history | grep"
alias fgrep="grep -rsn"
alias fdgrep="lsof | grep"
alias remake="make clean && clear && make"
alias soft="sudo ln -s"
alias affinity="taskset -p"
alias moul="mount | column -t"
