[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
setxkbmap us -variant intl
wal -i "$(< "${HOME}/.cache/wal/wal")" -a 80
exec i3
