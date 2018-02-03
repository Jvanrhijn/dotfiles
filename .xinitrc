[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
setxkbmap us -variant intl
wal -i "$HOME/Dropbox/Wallpapers" -o wal-set
exec i3
