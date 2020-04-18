function mkdate()
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

function psg()
{
    ps -eo comm,pid,ppid,psr,ruid,ruser,euser,lstart,sz,pri,sched,ni,policy,pri,stat,wchan | head -n 1
    ps -eo comm,pid,ppid,psr,ruid,ruser,euser,lstart,sz,pri,sched,ni,policy,pri,stat,wchan | grep $1
}

alias ..="cd .."
alias me="cd ~ && ls"
alias vib="vi $HOME/.bashrc"
alias refresh="source $HOME/.bashrc"
alias setrapid="echo $PWD > ~/.rapid"
alias rapid="refresh && cd `cat ~/.rapid`"
alias ls="ls --group-directories-first --color=auto"

#
alias fgrep="grep -rsn"
alias fdgrep="lsof | grep"
alias hgrep="history | grep"
alias gfind="sudo find / | grep"
alias lfind="sudo find . | grep"

#
alias soft="ln -s"
alias drivers="lsmod"
alias affinity="taskset -p"
alias mountlist="mount | column -t"
alias cores="ulimit -s unlimited && ulimit -c unlimited"


