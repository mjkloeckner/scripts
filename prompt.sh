#!/bin/bash
# A dmenu binary prompt script.
# Gives a dmenu propmt labeled with $1 to perform command #2
# For example:
# './prompt "Do you want to shutdown?" "shutdown -h now"'

# Autor: lukesmith.xyz

[ $(echo -e "No\nYes" | dmenu -i -p "$1") == "Yes" ] && $2
