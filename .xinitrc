[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
wal -i $HOME/Dropbox/Wallpapers -o wal-set
setxkbmap us -variant intl
exec i3
