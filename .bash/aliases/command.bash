# COMMANDS SHORTCUT
alias ip="py ~/.filerep/.scripts/ip.py; sob"
alias PV='nvim ~/.private_variables'
alias py='python3'
# alias ran='ranger --choosedir=$HOME/.terminal-config/.rangerdir; LASTDIR=`cat $HOME/.terminal-config/.rangerdir`; cd "$LASTDIR"'
alias ran='ranger --choosedir=/tmp/.rangerdir; LASTDIR=`cat /tmp/.rangerdir`; cd "$LASTDIR"'
alias list='pip3 list --format columns'
alias randr='xrandr --output HDMI-1 --mode 2560x1440; conky'
alias mcrandr='xrandr --output HDMI-1 --mode 1280x720'
alias ncal="ncal -3 -b -M"
alias conky="conky -b -c ~/.filerep/.conkyrc &"
alias spot="/home/matteoscaini/.filerep/.scripts/spotify.sh"
alias dockerlist="docker container ls -a"
alias gitlist="find $HOME -name .git -type d -exec dirname {} \;"
