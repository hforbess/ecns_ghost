#!/bin/bash
user=$1
if [ $user ]
then
find . -type d -exec chmod 775 {} \;
find . -type f -exec chmod 664 {} \;
chown $user:ghost .
chown -R $user:ghost *
else
echo "You must provide a user as a parameter."
fi
