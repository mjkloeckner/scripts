#!/bin/sh

col_gray1="#000000"
col_gray3="#bbbbbb"
col_gray4="#eeeeee"
col_darkmagenta="#8B008B"

prompt='Which drive do you want to mount?'

rmedia=$(ls /dev/sd* | sed '/sda/d')
dmenuargs="-i -l 10 -h 14 -z 750 -bw 2 -c $@ -nb $col_gray1 -nf $col_gray3 -sb $col_darkmagenta -sf $col_gray4"

[[ -z $rmedia ]] && notify-send "No removable media found" -t 2000 && exit 1

name=$(ls /dev/sd* | sed '/sda/d' | sed -n '/sd../p' | dmenu $dmenuargs)

[[ -z $name ]] && exit 1 

echo $name | dmenu $dmenuargs
