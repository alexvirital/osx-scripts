#!/bin/sh
# Fix GateKeeper for Citrix script
# 10/03/2012 ABCO

# So GateKeeper blocks the Citrix add-in from installing or uninstalling. We need to
# disable it in order to get Citrix running, but we don't want to just broadcast allow
# people to disable GK - so we use this script, use this to smack GK down, and have a
# list generate on the JSS with the users who have fired it. 

spctl --master-disable