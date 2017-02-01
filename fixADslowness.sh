#!/bin/bash
# 8/23/12, nate
# attempt to reduce AD mobile account login delays while off network
# change DOMAIN to your AD domain/config file name

if [[ -e /Library/Preferences/OpenDirectory/Configurations/Active\ Directory/ADVISORY.plist ]]; then
   /usr/libexec/PlistBuddy -c "Set options:query\ timeout 2" /Library/Preferences/OpenDirectory/Configurations/Active\ Directory/ADVISORY.plist
   /usr/libexec/PlistBuddy -c "Set options:connection\ idle\ disconnect 5" /Library/Preferences/OpenDirectory/Configurations/Active\ Directory/ADVISORY.plist
   /usr/libexec/PlistBuddy -c "Set options:connection\ setup\ timeout 5" /Library/Preferences/OpenDirectory/Configurations/Active\ Directory/ADVISORY.plist
fi