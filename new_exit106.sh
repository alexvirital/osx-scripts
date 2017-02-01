#!/bin/sh
# Exit 10.6 script
# This script runs in conjunction with Casper.

# First, let's create a folder and flag ourselves as in-transition
mkdir -p /var/abco/
touch /var/abco/.in_108_transition
jamf recon
# with that recon we're now in the correct group on casper. More on that later.

# Okay, we need to break out of OD. 
oldDomain="malreynolds.advisory.com" # Enter the FQDN of your old OD
oldODip="10.10.10.130" # Enter the IP of your old OD

# These variables probably don't need to be changed
check4OD=`dscl localhost -list /LDAPv3`

# Check if bound to old Open Directory domain

if [ "${check4OD}" == "${oldDomain}" ]; then
echo "This machine is joined to ${oldDomain}"
echo "Removing from ${oldDomain}"
dsconfigldap -r "${oldDomain}" -u domjoin -p $password
dscl /Search -delete / CSPSearchPath /LDAPv3/"${oldDomain}"
dscl /Search/Contacts -delete / CSPSearchPath /LDAPv3/"${oldDomain}"
if [ "${odSearchPath}" = "" ]; then
echo "$oldDomain not found in search path."
fi

# Check if bound to old Open Directory domain's IP address

else if [ "${check4OD}" == "${oldODip}" ]; then
echo "This machine is joined to ${oldODip}"
echo "Removing from ${oldODip}"
dsconfigldap -r "${oldODip}" -u domjoin -p $password
dscl /Search -delete / CSPSearchPath /LDAPv3/"${oldODip}"
dscl /Search/Contacts -delete / CSPSearchPath /LDAPv3/"${oldODip}"
if [ "${odSearchPath}" = "" ]; then
echo "$oldODip not found in search path."
fi
fi
fi
killall DirectoryService
echo "Finished."

# OD Breakout is now done. let's flush MCX once before moving on. 
dscl . -list Computers | grep -v "^localhost$" | while read computer_name ; do sudo dscl . -delete Computers/"$computer_name" ; done


# Now, let's make sure we're backing up
# [PH] tmutil enable
# [PH] tmutil setdestination [PH] TIME MACHINE DISK HERE [PH]
# [PH] tmutil startbackup

# Okay, time to test our encryption status.
if [ -f "/usr/local/bin/pgpwde" ]; then
	pgpstatus=`/usr/local/bin/pgpwde --status | grep instrumented`
	if [ "$pgpstatus" == "Disk 0 is instrumented by bootguard." ];then
		/usr/local/bin/pgpwde --decrypt --disk 0 -p $crypto
		else 
			if [ "$pgpstatus" == "Disk 0 is not instrumented by bootguard." ]; then
				killAll "PGP Engine"
				/Applications/PGP.app/Contents/Resources/uninstall_pgp.pl --uid 501
			fi
	fi
	else
		if [ "$pgpstatus" == "Disk 1 is instrumented by bootguard." ]; then
			/usr/local/bin/pgpwde --decrypt --disk 1 -p $crypto
			else
				if [ "$pgpstatus" == "Disk 1 is not instrumented by bootguard." ]; then
					killAll "PGP Engine"
					/Applications/PGP.app/Contents/Resources/uninstall_pgp.pl --uid 501
				fi
		fi
fi
