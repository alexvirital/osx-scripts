#!/bin/sh

# Exits 10.6.
# 

# First, we need to flag as a transitioning machine - this is vital because it flags a bunch of stuff in Casper
mkdir /var/abco
touch /var/abco/.abc_transition_to_mlion

# Test to see if drive has mounted yet for ™

# Kick off TM

#Break off of Mal/Flush MCX
dsconfigldap -r malreynolds.advisory.com -u domjoin -p $password
dscl . -list Computers | grep -v "^localhost$" | while read computer_name ; do sudo dscl . -delete Computers/"$computer_name" ; done

#Decrypt. First we determine what disk is actually encrypted, then we decrypt it.

pgpwde --enum | grep 
pgpwde --decrypt -p $cryptopass --disk 1
pgpwde --decrypt -p $cryptopass --disk 0