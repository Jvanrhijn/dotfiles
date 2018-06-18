[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
setxkbmap us -variant intl
export QT_QPA_PLATFORMTHEME=gtk2
export DESKTOP_SESSION=gnome
xset s off -dpms
exec i3
