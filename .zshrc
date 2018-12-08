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

# functions
texed() {
    okular "$1.pdf" & disown && vim -c "NeoTexOn" "$1.tex"
}

ffsettheme() {
  sudo sed -i "s/Exec=firefox %u/Exec=env GTK_THEME=$1 firefox %u/g" $(locate firefox.desktop)
}

cl() {
  cd $1 && ls --color=auto -C
}

# prompt 
PROMPT="[%n@%m %d]%(!.#.$) "

# merge .Xresources
xrdb -merge ~/.Xresources

# Forcibly load colorscheme from script
#sh $HOME/.config/molokai.sh

# fuck
eval $(thefuck --alias)

# PATH
#PATH=$PATH:$HOME/.local/bin:$HOME/opt/gcc-arm-none-eabi-7-2017-q4-major/bin
PATH=$PATH:$HOME/.local/bin

# pure prompt
autoload -U promptinit; promptinit
prompt pure

# Set default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# zsh syntax highlighting plugin
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Get aliases
. $HOME/.zsh_aliases

# Intel MKL libraries
source /opt/intel/compilers_and_libraries_2018.0.128/linux/mkl/bin/mklvars.sh intel64

# Standard compilers
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
