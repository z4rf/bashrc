##### Ramin's Amazing .bashrc #####

alias brc="source ~/.bashrc"
alias nbrc="nano ~/.bashrc"
alias vbrc="vi ~/.bashrc"
alias bpr="echo its bashrc, dummy"
alias nbpr="echo its bashrc, dummy"
alias vbpr="echo its bashrc, dummy"

# "autocorrect" (also I'm aware it's not every combination of these letters,
#   these are just the most common typos I've encountered so far)
alias caler="clear"
alias cealr="clear"
alias celar="clear"
alias clare="clear"
alias claer="clear"
alias lacer="clear"
alias lcaer="clear"
alias lcear="clear"
alias caelr="clear"
alias acler="clear"
alias cler="clear"

alias sl="ls"
alias h="history"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# Smiley/Frowny PS1
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
SMILEY=":)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"
# Throw it all together 
PS1="${RESET}${WHITE}\! \h:\W${NORMAL} \`${SELECT}\` ${WHITE}>${NORMAL} "

# Frequently used IPs
MINI="100.36.104.164"
VA="100.15.238.98"

alias vncmini="open vnc://$MINI"

sshmini() {
ssh rz@${MINI}
}

sshpi() {
ssh rz@${VA}
}

sshpil() {
ssh rz@192.168.1.170
}

up() {
    for i in `seq 1 $1`;
    do
        # echo "1 is" $1
        cd ..
    done
}

hg() {
history | grep $1
}

thanks() {
echo "No problem, friendo"
}

matrix() {
	echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|awk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}

# War games shortcuts 
# https://overthewire.org/wargames/

bandit() {
ssh bandit$1@bandit.labs.overthewire.org -p 2220
}

behemoth() {
ssh behemoth$1@behemoth.labs.overthewire.org -p 2221
}
