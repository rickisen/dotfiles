# Simple script for making softlinks to the 
# correct positions for the dotfiles, as well as adding the infamus dot to them

# xmonad config
#ln -sf xmonad/xmonad.hs ~/.xmonad/xmonad.hs

mkdir ~/.i3 ~/.config ~/bin ~/bin/scripts ~/.vim

# i3-gaps
ln -sf i3/config ~/.i3/config
ln -sf i3/i3status.cfg ~/.i3/i3status.cfg

# compton
ln -sf compton/compton.conf ~/.compton.conf

# conky
ln -sf conky/conkyleft.conkyrc ~/.conkyleft.conkyrc
ln -sf conky/conkyright.conkyrc ~/.conkyright.conkyrc

# ranger
ln -sf ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -sf ranger/scope.sh ~/.config/ranger/scope.sh

# scripts
ln -sf scripts/ip-info/InternetInfo.sh ~/bin/InternetInfo.sh
ln -sf scripts/ip-info/KillPing.sh ~/bin/KillPing.sh
ln -sf scripts/sonyLaptop/keyboard-backlight-toggle.sh ~/bin/keyboard-backlight-toggle.sh
ln -sf scripts/sonyLaptop/trackpad-toggle.sh ~/bin/trackpad-toggle.sh

# vim
ln -sf vim/vimrc ~/.vimrc
ln -sf vim ~/.vim

# X
ln -sf X/xinitrc ~/.xinitrc
ln -sf X/Xresources ~/.Xresources

