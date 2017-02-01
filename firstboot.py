#!/usr/bin/python
# Alex Merenyi
# python version of Firstboot.sh (so i guess firstboot.py)
# POC script, not for deployment

import socket
import os
import syslog

syslog.openlog("python")


if not os.path.exists("/var/mon"):
	os.makedirs("/var/mon")

localname = socket.gethostname()
if "localhost" not in localname:
	bind_to_ad=0

else:
	bind_to_ad=1
	syslog.syslog(syslog.LOG_ALERT, "Machine name is " + localname + ". Not binding to Active Directory.")

if bind_to_ad==0:
	#os.system("/usr/sbin/jamf policy -advbind")
	print "we would bind to active directory"

#ok, let's do the ntp settings.
os.system("systemsetup -setusingnetworktime on")
os.system("systemsetup -setnetworktimeserver pentagon.advisory.com")

#Let's log a build date and other info.
print "This is an asset of [X]."