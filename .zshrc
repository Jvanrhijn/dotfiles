# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jesse/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto -C'
alias la='ls -a'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias nvidia='optirun nvidia-settings -c :8'
alias todo='todotxt-machine'
alias here='termite -d $PWD & disown'
alias myip='curl http://ipecho.net/plain; echo'
alias music='tmux source-file $HOME/.config/tmux/music'
alias gitdog='git log --all --decorate --oneline --graph'
alias vim='nvim'
alias proc='ps aux | grep'
alias getscr='xrandr --current'
alias cart='ssh vanrhijn@cartesius.surfsara.nl'
alias door='ssh vanrhijn@doornode.surfsara.nl'
alias copy='xclip -o | xclip -selection clipboard -i'
alias python='python3.6'
alias copr='sudo dnf copr enable'
alias insty='sudo dnf install -y'
alias ipython='ipython3'
alias matlab='matlab -nodesktop -softwareopengl -nosplash'


# functions
texed() {
    okular "$1.pdf" & disown && vim -c "NeoTexOn" "$1.tex"
}

duplscr() {
    xrandr --output "$1" --same-as DP-1
}

rightscr() {
    xrandr --output "$1" --right-of DP-1
}

leftscr() {
    xrandr --output "$1" --left-of DP-1
}

# prompt 
PROMPT="[%n@%m %d]%(!.#.$) "

# fuck
eval $(thefuck --alias)

# Forcibly load colorscheme from script
sh $HOME/.config/molokai.sh

# PATH
PATH=$PATH:$HOME/opt/gcc-arm-none-eabi-7-2017-q4-major/bin:$HOME/.local/bin

# source
#source /opt/intel/parallel_studio_xe_2018/compilers_and_libraries_2018/linux/bin/ifortvars.sh intel64

# JDK
export JAVA_HOME=/usr/lib/jvm/java-10-openjdk

# pure prompt
autoload -U promptinit; promptinit
prompt pure

source /home/jesse/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# C/CXX compilers
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
