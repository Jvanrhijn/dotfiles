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

# prompt 
PROMPT="[%n@%m %d]%(!.#.$) "

# merge .Xresources
xrdb -merge ~/.Xresources

# Forcibly load colorscheme from script
sh $HOME/.config/molokai.sh

# fuck
eval $(thefuck --alias)

# PATH
#PATH=$PATH:$HOME/.local/bin:$HOME/opt/gcc-arm-none-eabi-7-2017-q4-major/bin

# pure prompt
autoload -U promptinit; promptinit
prompt pure

# Set default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# zsh syntax highlighting plugin
source /home/jesse/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Get aliases
. $HOME/.zsh_aliases
