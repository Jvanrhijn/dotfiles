# dotfiles
My config files. Master branch is for my laptop, desktop is, well, for my desktop.

**Summary**

* Shell: zsh
* Terminal: urxvt
* Theming: pywal
* Bar: polybar
* WM: i3-gaps
* Tmux + ncmpcpp music player
* neovim color scheme, from pywal

**pkglist**

This file is just a list of packages I consider essential for my system. Some are needed for the setup to work (like xorg and the font packages), some are things I personally need or want to have on any system (like tex). I recommend perusing the list and taking your pick, it should be fairly obvious which are required and which aren't. The packages are a mixed back of official repo and AUR packages, so install at your own risk.

**Polybar**

The part I customized most, I guess. It's still mostly stock, but the colors are read from .Xresources, and I changed which default modules it shows. See .config/polybar/config for the active modules. I also have a few custom modules using some scripts. Features:
* Weather module, taken from the custom script collection on github
* Gmail module, by vyachkonovalov
* Dropbox module, checks if dropbox is running. If so, it prints a little icon in the bar. Clicking on the icon opens $HOME/Dropbox in Nemo.
* Steam module, same as the dropbox one, but opens the steam window when clicked.
* Workspaces with icons! No numbers, since I can remember which workspace corresponds to which icon, and it looks nicer this way.
* Laptop: bbswitch status checker, since it doesn't always turn off properly.

**i3-gaps**

Didn't really change much here, just changed the gap size to my liking and changed the movement keybindings to correspond to vim bindings. Super+H now moves left, so opening a horizontally split window is now bound to Super+B. I also start some services from $HOME/.config/i3/config.
