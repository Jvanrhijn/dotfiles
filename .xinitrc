[[ -f ~/.Xresources ]] && xrbd -merge -I$HOME ~/.Xresources
setxkbmap us -variant intl
#wal -i "$(< "${HOME}/.cache/wal/wal")" -a 80
wal -i "$HOME/Dropbox/Wallpapers" -o wal-set
export QT_QPA_PLATFORMTHEME=gtk2
export DESKTOP_SESSION=gnome
xset s off -dpms
exec i3
