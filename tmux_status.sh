#!/bin/sh

data=$(gitmux -cfg ~/.config/tmux/gitmux.conf $@)

if [ -z "$data" ]; then
	printf "%-56s" "";
	exit;
fi

str=$(echo -n $data | sed -e 's/#\[[^][]*\]//g')

count=$(echo -n $str | wc -m)

# 70 are fixed
# padding=$((70 + desired_padding - count))

padding=170

printf "%-${padding}s" "$data"
