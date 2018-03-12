export PATH=$PATH:/usr/local/bin
export PS1="\[$(tput setaf 2)$(tput bold)\]\u@\h: \[$(tput setaf 4)\]\w\[$(tput setaf 5)\]\$(__git_ps1)\[$(tput setaf 2)\] $ \[$(tput sgr0)\]"
export GREP_OPTIONS='--color=always' 
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HOME=`/usr/libexec/java_home`
export HOMEBREW_GITHUB_API_TOKEN=054c83656ea562ddcfa08bd76c60a11ba537bfc3

ECHO ----- rbenv init -----
eval "$(rbenv init -)"

source ~/.git-completion.bash
source ~/.git-prompt.sh
ECHO ----- git autocompletion loaded -----

alias ontop="sh ~/Applications/Ontop/ontop.command"

alias format="/Applications/IntelliJ\ IDEA.app/Contents/bin/format.sh"
alias inspect="/Applications/IntelliJ\ IDEA.app/Contents/bin/inspect.sh"
alias idea="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea"

alias cask="brew cask"
alias rdfconvert="java -jar /bin/rdf2rdf-1.0.1-2.3.1.jar"
alias py="python"
alias project="j _Projects"
alias ..="cd .."
alias download="j Download"
alias dropbox="j Dropbox"
alias docs="j Documents"
alias desk="j Desktop"

alias d="docker"

#source `brew --repository`/Library/Contributions/brew_bash_completion.sh
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
ECHO ----- brew autocompletion loaded -----
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
ECHO ----- rvm autocompletion loaded -----

alias telegram="/opt/telegram/telegram -k /opt/telegram/tg.pub"
ECHO ----- telegram alias exported -----
alias ls="ls -G"
alias mv="mv -i"
alias rm="rm -i"
alias dir="ls -al"
alias projects='cd ~/Documents/Projects/'

ECHO ----- bash tweaked -----

#load autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
ECHO ----- autojump loaded -----

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

fortune | cowsay
ECHO

# OPAM configuration
. /Users/Riccardo/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

#Paper scafolding
function lncs(){
	git clone https://github.com/riccardotommasini/Springer-LNCS-LaTeX-Paper-Template $1
}
alias lncs_new=lncs 

# Kno.e.sis Server cmd
function download_from_knoesis1(){
	echo "download from knoesis1:/home/ubuntu/riccardo/"$1 "in" $2$(scp  ubuntu@knoesis1:/home/ubuntu/riccardo/$1 $2) 
}

alias logk1="ssh -i .ssh/id_rsa ubuntu@knoesis1"
alias downloadk1=download_from_knoesis1

# Databases
#MySQL
export MYSQL_HOME=/usr/local/mysql
alias start_mysql='sudo $MYSQL_HOME/support-files/mysql.server start'
alias stop_mysql=' sudo $MYSQL_HOME/support-files/mysql.server stop'
alias mysql_start='sudo $MYSQL_HOME/support-files/mysql.server start'
alias mysql_stop=' sudo $MYSQL_HOME/support-files/mysql.server stop'
alias mysql="$MYSQL_HOME/bin/mysql"
alias mysqladmin="$MYSQL_HOME/bin/mysqladmin"
#RDF tools

alias rdf_converter="java -jar /usr/local/bin/rdf2rdf-1.0.1-2.3.1.jar"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
