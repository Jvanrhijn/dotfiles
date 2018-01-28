[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
export QT_QPA_PLATFORMTHEME=gtk2
export DESKTOP_SESSION=gnome
setxkbmap us -variant intl
wal -i "$(< "${HOME}/.cache/wal/wal")" -a 80
xset s off -dpms
exec i3
