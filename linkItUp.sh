# Simple script for making softlinks to the 
# correct positions for the dotfiles, as well as adding the infamus dot to them

# compton
ln -s compton/compton.conf ~/.compton.conf

# conky
ln -s conky/conkyleft.conkyrc ~/.conkyleft.conkyrc
ln -s conky/conkyright.conkyrc ~/.conkyright.conkyrc

# ranger
ln -s ranger/rc.conf ~/.config/ranger/rc.conf
ln -s ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -s ranger/scope.sh ~/.config/ranger/scope.sh

# scripts
mkdir ~/bin
ln -s scripts/ip-info/InternetInfo.sh ~/bin/InternetInfo.sh
ln -s scripts/ip-info/KillPing.sh ~/bin/KillPing.sh
ln -s scripts/sonyLaptop/keyboard-backlight-toggle.sh ~/bin/keyboard-backlight-toggle.sh
ln -s scripts/sonyLaptop/trackpad-toggle.sh ~/bin/trackpad-toggle.sh

# vim
ln -s vim/vimrc ~/.vimrc
ln -s vim ~/.vim

# X
ln -s X/xinitrc ~/.xinitrc
ln -s X/Xdefaults ~/.Xdefaults

# xmonad config
ln -s xmonad/xmonad.hs ~/.xmonad/xmonad.hs
