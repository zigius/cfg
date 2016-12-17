. /Users/daniel.zinger/z/z.sh

# Case insensitive tab completion in Bash
# http://superuser.com/questions/90196/case-insensitive-tab-completion-in-bash
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"


# ~:            Go Home
alias ~="cd ~"                              

# Preferred 'ls' implementation
alias ll='ls -FGlAhp'

# Go mappings
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
