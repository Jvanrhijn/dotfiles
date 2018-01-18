[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
setxkbmap us -variant intl
wal -i "$(< "${HOME}/.cache/wal/wal")" -a 95
exec i3
