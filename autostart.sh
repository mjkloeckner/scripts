# set proper resolution
xrandr -s 1366x768

# set wallpaper
nitrogen --restore

# start compositor
picom &

setxkbmap -option caps:swapescape
setxkbmap -option altwin:swap_lalt:lwin
