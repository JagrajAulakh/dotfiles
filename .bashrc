#==============================================
#     ______             _
#    (____  \           | |
#     ____)  )_____  ___| |__   ____ ____
#    |  __  ((____ |/___)  _ \ / ___) ___)
#    | |__)  ) ___ |___ | | | | |  ( (___
#    |______/\_____(___/|_| |_|_|   \____)
#
#==============================================

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

function bgcolor {
    echo "\\[\\033[48;5;"$1"m\\]"
}

function fgcolor {
    echo "\\[\\033[38;5;"$1"m\\]"
}

function resetcolor {
    echo "\\[\\e[0m\\]"
}

if [ "$color_prompt" = yes ]; then
#     # PS1='[\u@\h \W]\$ '

	# GREEN
	# PS1="$(fgcolor 70)\u$(resetcolor)@$(bgcolor 70)$(fgcolor 0)\h$(resetcolor)$(fgcolor 82):$(fgcolor 15)\w\n\$ $(resetcolor)"

	# BLUE
	PS1="$(fgcolor 39)\u$(resetcolor)@$(bgcolor 39)$(fgcolor 0)\h$(resetcolor):$(fgcolor 15)\w\n\$ $(resetcolor)"

	# YELLOW
	# PS1='\[\033[01;38;5;178m\]\u\[\033[00m\]@\[\033[01;38;5;220m\]\h\[\033[00m\]:\[\033[38;5;15m\]\w\n\$ \[\033[00m\]'

	# PURPLE
	# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;38;5;175m\]\u\[\033[00m\]@\[\033[01;38;5;133m\]\h\[\033[00m\]:\[\033[38;5;15m\]\w\n\$ \[\033[00m\]'
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

[[ -f ~/.alias ]] && . ~/.alias

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


compileC() {
	gcc $1 -o ${1%.*}
}

runC() {
	gcc $1 -o ${1%.*} -lm && ./${1%.*}
}

compileCpp() {
	g++ $1 -o ${1%.*}
}

runCpp() {
	g++ $1 -o ${1%.*} && ./${1%.*} -lm
}

runJava() {
	javac $1 && java ${1%.*}
}

gsettings set org.gnome.desktop.sound event-sounds false

# ### POWERLINE STUFF ###
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh

