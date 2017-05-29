# Simple script for making softlinks to the
# correct positions for the dotfiles, as well as adding the dot to them

# ==================================================
# Home folder
# ==================================================

ln -s home/compton.conf                ~/.compton.conf
ln -s home/rtorrent.rc                 ~/.rtorrent.rc
ln -s home/tmux.conf                   ~/.tmux.conf
ln -s home/xprofile                    ~/.xprofile
ln -s home/Xresources                  ~/.Xresources
ln -s home/zshrc                       ~/.zshrc

if [[ $1 == "desktop" ]]; then
  ln -s home/Desktopi3Left.conkyrc     ~/.conkyleft.conkyrc
  ln -s home/Desktopi3Right.conkyrc    ~/.conkyright.conkyrc
  ln -s home/fehbg_desktop             ~/.fehbg
else
  ln -s home/Laptopi3Left-new.conkyrc  ~/.conkyleft.conkyrc
  ln -s home/Laptopi3Right-new.conkyrc ~/.conkyright.conkyrc
  ln -s home/fehbg_laptop              ~/.fehbg
fi

# ==================================================
# config folder
# ==================================================

ln -s config/cmus/autosave             ~/.config/cmus/autosave
ln -s config/cmus/coffee.theme         ~/.config/cmus/coffee.theme
ln -s config/cmus/gruvbox.theme        ~/.config/cmus/gruvbox.theme

ln -s config/ranger/rc.conf            ~/.config/ranger/rc.conf
ln -s config/ranger/colorschemes       ~/.config/ranger/colorschemes
ln -s config/ranger/rifle.conf         ~/.config/ranger/rifle.conf
ln -s config/ranger/scope.sh           ~/.config/ranger/scope.sh

ln -s config/color                     ~/.config/color
ln -s config/dunst                     ~/.config/dunst
ln -s config/i3                        ~/.config/i3
ln -s config/oomox                     ~/.config/oomox
ln -s config/qutebrowser               ~/.config/qutebrowser
ln -s config/rofi                      ~/.config/rofi
ln -s config/roxterm.sourceforge.net   ~/.config/roxterm.sourceforge.net
ln -s config/sway                      ~/.config/sway

# ==================================================
# themes folder
# ==================================================

ln -s themes/gtk3/oomox-gruvbox-gtk    ~/.themes/oomox-gruvbox-gtk
ln -s themes/icons                     ~/.icons

# ==================================================
# scripts folder
# ==================================================

ln -s scripts                          ~/bin/dot-scripts

