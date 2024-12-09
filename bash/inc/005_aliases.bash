########## Folders
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

########## Custom commands
alias fontsCacheClear="sudo fc-cache -f -v"
alias toMe="sudo chown -R $(whoami):$(whoami)"

########## Apt aliases
alias apt-get="sudo apt-get"
alias apt-key="sudo apt-key"
alias apt="sudo apt"
alias aptAllTheWay="reset && sudo apt-get update --quiet && sudo apt-get dist-upgrade --auto-remove --show-progress --assume-yes && sudo apt-get auto-remove --assume-yes && sudo apt-get auto-clean --assume-yes"
alias aptUpdate="reset && sudo apt-get update"

########## Add sudo aliases
alias dpkg="sudo dpkg"
alias find="sudo find"
alias ifdown="sudo ifdown"
alias ifup="sudo ifup"
alias service="sudo service"
alias docker="sudo docker"
alias synaptic="sudo synaptic"

########## Common usage aliases
alias df="df --human-readable --total --local --exclude-type=overlay"
alias du='sudo du --total --human-readable --summarize'
alias du1='sudo du --total --human-readable --max-depth=1'
alias echo="echo -e"
alias free="free --human --lohi --si --wide"
alias grep="grep --no-messages --ignore-case --color=always --line-number --binary-files=without-match --exclude-dir=.config --exclude-dir=.cache --exclude-dir=.local --exclude-dir=.git"
alias gzip="gzip --best"
alias kill="sudo kill -9"
alias killall="sudo killall --ignore-case"
alias la="ls -la"
alias ls="ls --color=always --classify  --human-readable"
alias mkdir="mkdir --parents --verbose"
alias ping="ping -c4"
alias ps='ps -Af'
