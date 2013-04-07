# customized prompt
export PS1="\[\e[1;30m\]\u\[\e[1;32m\]:\[\e[34m\]\W \[\e[1;31m\]\$ \[\e[0m\]"
export LANG=en_US.UTF-8
export CLICOLOR=1

# adding some dirs to the path
export STARDOG_HOME=~/Data/stardog
export PATH=/usr/local/bin:/usr/bin:$STARDOG_HOME:$PATH

# aliases
alias ll="ls -lhG"
alias la="ls -lahG"
alias tree="tree -hlC"
 
# bash completion stuff
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
     
# ant coloring: taken from http://martinadamek.com/2012/02/24/ant-with-colors-in-os-x-terminal/
ant () { command ant  -logger org.apache.tools.ant.listener.AnsiColorLogger "$@" | sed 's/2;//g' ; }

# ruby rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
