#!/bin/sh

SPAUDIT=""
DIRECTORY="/private/var/db/dslocal/nodes/Default/sharepoints/"

#Determine if the /sharepoints folder exists
if [ -d "$DIRECTORY" ]; then
#list the contents if so
SPAUDIT=`ls $DIRECTORY`
logger "<result>$SPAUDIT</result>"
echo "<result>$SPAUDIT</result>"

else
SPAUDIT="No sharepoints defined"
logger $SPAUDIT
echo "<result>$SPAUDIT</result>"
fi