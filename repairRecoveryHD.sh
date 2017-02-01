#!/bin/bash

# ABCO Recovery HD rebuild script. Adopted from Clay Caviness (of Google.) 
# Thanks, internet!

hdiutil attach /RecoveryHDUpdate.dmg
pkgutil --expand /Volumes/Mac\ OS\ X\ Lion\ Recovery\ HD\ Update/RecoveryHDUpdate.pkg /tmp/RecoveryHDUpdate
hdiutil attach /tmp/RecoveryHDUpdate/RecoveryHDUpdate.pkg/RecoveryHDMeta.dmg
/tmp/RecoveryHDUpdate/RecoveryHDUpdate.pkg/Scripts/Tools/dmtest ensureRecoveryPartition / /Volumes/Recovery\ HD\ Update/BaseSystem.dmg 0 0 /Volumes/Recovery\ HD\ Update/BaseSystem.chunklist

hdiutil eject /Volumes/Recovery\ HD\ Update
hdiutil eject /Volumes/Mac\ OS\ X\ Lion\ Recovery\ HD Update

sudo touch /Library/Preferences/SystemConfiguration/com.apple.Boot.plist
sudo kextcache -f -u /