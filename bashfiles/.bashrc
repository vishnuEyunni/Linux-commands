alias ll="ls -l"
alias lsa="ls -la"     

alias 1.="cd ../"      
alias 2.="cd ../../"   
alias 3.="cd ../../../"

alias cl="clear"       
alias h="history"      
alias q="exit"
alias d="date"

alias home="cd ~"      
alias D="cd /d"        
alias s.="start ."     
alias C="cd /c"        

alias "docker-rmi"="docker rmi $(docker images | grep 'none' | awk '{print $3}')"

alias "docker-rm"="docker rm $(docker ps -aq)"

alias gcl="git clone"
alias gcm="git commit -m"
alias ga="git add"
alias gs="git status"
alias gsh="git stash"
alias gr="git reset"
alias gch="git checkout"
alias gf="git fetch -ap"

g() {
    if [[ $@ == "p" ]]; then
        command git push
    else
        command git "$@"
    fi
}

# alias gl="cat ~/.bashrc | grep git | awk '{print \$2,\$3}' | grep -v 'gl'"
# alias gl="cat ~/.bashrc | grep git | awk 'BEGIN {FS="\ \g\*"}{print \$2,\$3}' | grep -v 'gl'"

alias gl="cat ~/.bashrc | grep git | grep -v 'gl' | awk '{split(\$0,a,\"=\"); x=substr(a[1],7,4);printf x;printf \"=\" ; print a[2]}'"
