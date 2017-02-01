#!/bin/sh
#Omnigraffle license extension attribute

oglicenseloc="/Library/Application Support/Omni Group/Software Licenses"
ogfile=$(ls "$oglicenseloc" | grep "OmniGraffle")
if [ "$ogfile" ]; then

ogloc=$(awk '/key/{print x};{x=$0}' "$oglicenseloc"/$ogfile)
og_r=$(cat "$oglicenseloc"/$ogfile | grep "string" | tail -n 2 | tail -r | tail -n 1 | sed 's/<string>//' | sed 's/<\/string>//' | awk '{print $1}')
echo "<result> $og_r </result>"
else

echo "<result> No Omnigraffle Key detected. </result>"

fi