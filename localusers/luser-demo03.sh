#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the vagrant user or not. 

# display the UID 
echo "your UID ${UID}"
UID_TO_TEST_FOR='1000'
# Only display if the UID does NOT match 100.
  # when a script or program runs succ. it returns 0.
  # here we returning a non zero exit status  
  # if you dont pass anything to exit , staus will be the exit status of last command

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]] 
  then
    echo "Your UID does NOT match ${UID_TO_TEST_FOR}"
    exit 1
fi

# Display the username. 
USER_NAME=$(id -un)

# Test if the command succeeded 
  # ${?} will hold the exit status of last command
  # you can do usefully things like store ${?} in a variable or run in cml
  # so to test for success you would check if not equal to 0
if [[ "${?}" -ne 0 ]] 
  then
    echo 'The id command did not execute succesfully'
    exit 1 
fi
echo "Your username is ${USER_NAME}"


# you can use a string test conditional. 
  # = is assignment and comparison == is for pattern matching 
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]] 
then
echo "your user name matches ${USER_NAME_TO_TEST_FOR}"
fi

# notequal for the string 

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then 
  echo "your username does not equal ${USER_NAME_TO_TEST_FOR}"
  exit 1 
fi

exit 0
