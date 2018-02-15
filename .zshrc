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
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias nvidia='optirun nvidia-settings -c :8'
alias todo='todotxt-machine'
alias here='urxvt -cd $PWD & disown'
alias myip='curl http://ipecho.net/plain; echo'
alias lyrics='spotify-lyric'
alias music='tmux source-file $HOME/.config/tmux/music'
alias gitdog='git log --all --decorate --oneline --graph'
alias vim='nvim'

# prompt 
PROMPT="[%n@%m %d]%(!.#.$) "

# import color scheme from wal
(cat ~/.cache/wal/sequences &)

# merge .Xresources
xrdb -merge ~/.Xresources

# fuck
eval $(thefuck --alias)

# PATH
PATH=$PATH:$HOME/.local/bin:$HOME/opt/gcc-arm-none-eabi-7-2017-q4-major/bin

# source
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pure prompt
autoload -U promptinit; promptinit
prompt pure

# Set default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
