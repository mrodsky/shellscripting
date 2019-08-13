#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not

# Display the UID - special variable
echo "Your UID is ${UID}"

# Display the username (ID command : id -un ) same as whoami
USER_NAME=$(id -un)
#USER_NAME=`id -un` #can use tick (tilde as well)
echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not.
#if has to follow space, same with [[ ]] [[ is a bash keyword returns 0 or 1
# exit status 0 is true. 
if [[ "${UID}" -eq 0 ]]   
  then
    echo 'You are root.'
  else 
    echo 'You are NOT root.'
fi 
# fi close the if 

#You can sue the `test` command to check and logical conditions
# -eq comes from test ; root is always the UID of 0


