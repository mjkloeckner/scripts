#!/bin/sh

# Prints your local ip address, if you are connected both via wireless & ethernet then the ethernet ip is printed

# by github.com/klewer-martin

estatus="$(cat /sys/class/net/e*/operstate)"

if [ "$estatus" = "down" ]; 
	then ip=$(ip -o a | awk '/: w.*.inet .*/ { print $4 }' | sed 's/\// /' | awk '{ print $1 }');
	else ip=$(ip -o a | awk '/: e.*.inet .*/ { print $4 }' | sed 's/\// /' | awk '{ print $1 }');
fi;

echo $ip
