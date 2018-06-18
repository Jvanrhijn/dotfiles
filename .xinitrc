[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
setxkbmap us -variant intl
exec i3
