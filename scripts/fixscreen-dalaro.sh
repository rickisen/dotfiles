xrandr --newmode "1920x1080"x0.0  138.70  1920 1968 2000 2080  1080 1083 1088 1111 +hsync -vsync
xrandr --addmode HDMI1 1920x1080x0.0
killall compton
xrandr --output HDMI1 --right-of eDP1 --mode 1920x1080x0.0
~/.fehbg
compton --config ~/.compton.conf --backend glx --vsync opengl -b &\
