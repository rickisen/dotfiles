# Simple script for making softlinks to the
# correct positions for the dotfiles, as well as adding the dot to them

# ==================================================
# Home folder
# ==================================================

if [[ $1 == "force" ]] || [[ $2 == "force" ]]; then
  args="-Tfrs"
else
  args="-Tirs"
fi

ln $args home/compton.conf                ~/.compton.conf
ln $args home/rtorrent.rc                 ~/.rtorrent.rc
ln $args home/tmux.conf                   ~/.tmux.conf
ln $args home/xprofile                    ~/.xprofile
ln $args home/Xresources                  ~/.Xresources
ln $args home/zshrc                       ~/.zshrc

# mutt
ln $args home/muttrc                      ~/.muttrc
ln $args home/mailcap                     ~/.mailcap
mkdir -p ~/.cache/muttfolder/bodies
mkdir -p ~/.cache/muttfolder/headers
touch ~/.cache/mutt
touch ~/.cache/muttfolder/certificates

#if [[ $1 == "desktop" ]] || [[ $2 == "desktop" ]]; then
#  ln $args home/Desktopi3Left.conkyrc     ~/.conkyleft.conkyrc
#  ln $args home/Desktopi3Right.conkyrc    ~/.conkyright.conkyrc
#  ln $args home/fehbg_desktop             ~/.fehbg
#else
#  ln $args home/Laptopi3Left-new.conkyrc  ~/.conkyleft.conkyrc
#  ln $args home/Laptopi3Right-new.conkyrc ~/.conkyright.conkyrc
#  ln $args home/fehbg_laptop              ~/.fehbg
#fi

# ==================================================
# config folder
# ==================================================

mkdir ~/.config/cmus
ln $args config/cmus/autosave             ~/.config/cmus/autosave
ln $args config/cmus/coffee.theme         ~/.config/cmus/coffee.theme
ln $args config/cmus/gruvbox.theme        ~/.config/cmus/gruvbox.theme

mkdir ~/.config/ranger
ln $args config/ranger/devicons.py        ~/.config/ranger/devicons.py
ln $args config/ranger/rc.conf            ~/.config/ranger/rc.conf
ln $args config/ranger/colorschemes       ~/.config/ranger/colorschemes
ln $args config/ranger/rifle.conf         ~/.config/ranger/rifle.conf
ln $args config/ranger/scope.sh           ~/.config/ranger/scope.sh

ln $args config/gtk-3.0                   ~/.config/gtk-3.0
ln $args config/color                     ~/.config/color
ln $args config/alacritty                 ~/.config/alacritty
ln $args config/kitty                     ~/.config/kitty
ln $args config/dunst                     ~/.config/dunst
ln $args config/i3                        ~/.config/i3
ln $args config/oomox                     ~/.config/oomox
ln $args config/qutebrowser               ~/.config/qutebrowser
ln $args config/rofi                      ~/.config/rofi
ln $args config/roxterm.sourceforge.net   ~/.config/roxterm.sourceforge.net
ln $args config/sway                      ~/.config/sway

# ==================================================
# themes folder
# ==================================================

mkdir ~/.themes
ln $args themes/gtk3/oomox-gruvbox-gtk    ~/.themes/oomox-gruvbox-gtk
ln $args themes/icons                     ~/.icons

# ==================================================
# scripts folder
# ==================================================

ln $args scripts                          ~/bin/dot-scripts

# ==================================================
# local share
# ==================================================
mkdir -p ~/.local/share/qutebrowser/userscripts
ln $args local/share/qutebrowser/userscripts/               ~/.local/share/qutebrowser/userscripts/
