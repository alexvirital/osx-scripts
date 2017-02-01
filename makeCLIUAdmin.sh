#!/bin/sh

grep_output=`dscl . -read /Groups/admin | grep $USER`
if [ "$grep_output" == "" ]; then
	echo "Currently logged-in user is not an administrator; fixing now.";
	dseditgroup -o edit -a $USER -t user admin;
else
	echo "Currently logged-in user is already an administrator; quitting.";
fi
echo $grep_output