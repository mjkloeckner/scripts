#!/bin/sh

pstatus=$(acpi | sed -e '/Battery 1/d' -e 's/,//' | awk '{ print $3 }')
percentage=$(acpi | sed -e '/Battery 1/d' -e 's/,//g' -e 's/%//g'| awk '{ print $4 }')
remaining=$(acpi | sed -e '/Battery 1/d' -e 's/,//g' | awk '{ print $5 }' | cut -d ":" -f 1,2)

[ $pstatus = "Discharging" ] && [ $percentage -lt 20 ] && $(dunstify -t 3500 -u critical "Low battery!" "$remaining Remaining")

echo $pstatus
