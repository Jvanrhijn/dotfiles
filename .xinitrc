[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
setxkbmap us -variant intl
wal -i "$(< "${HOME}/.cache/wal/wal")" -a 80
xset s off -dpms
exec i3
