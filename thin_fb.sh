#!/bin/sh
#Alex Merenyi
#Firstboot.sh - runs once to configure a machine 
#this script is triggered after imaging. it will bind to the domain, run sus, apply ntp/build codes, and generally do machine configs that do not require a user.
#it is scoped to run once per machine at startup.

mkdir /var/mon/
bind_to_ad=0
#Ok, check the name first
cpname=`scutil --get ComputerName`
# if localhost, do not bind
if [[ $cpname == 'localhost' ]]; then
bind_to_ad=1
logger "failed adbind check = name is locahost"
fi
# if macbookpro.local, do not bind
if [[ $cpname == 'macbookpro.local' ]]; then
bind_to_ad=1
logger "failed adbind check = name is macbookpro.local"
fi
if [[ $bind_to_ad == 0 ]]; then
#Name OK? Bind to the domain
/usr/sbin/jamf policy -advbind
fi

#Okay, let's set NTP settings
systemsetup -setusingnetworktime on
systemsetup -setnetworktimeserver pentagon.advisory.com

#Now, let's log a build date
echo "This is an asset of [X]." > /var/mon/.buildinfo
date >> /var/mon/.buildinfo
echo "Bonjour Name is $cpname"
if [[ $bind_to_ad == 0 ]]; then
adname=`dsconfigad -show | grep "Computer Account"`
echo "Bound to Active Directory under name $adname" >> /var/mon/.buildinfo
else
echo "Not bound to Active Directory at imaging due to incorrect name." >> /var/mon/.buildinfo
fi

#lastly, let's check-in with the sus and update as needed
/usr/sbin/softwareupdate –ia