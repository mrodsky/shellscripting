#!/bin/bash
#  (#! is called a shebang specifys the environment?)

# This scrip displays various information to the screen.
#-rwxrwxrwx 1 vagrant vagrant  111 Aug 11 12:19 luser-demo01.sh
#-rwxrwxrwx 1 vagrant vagrant 3091 Aug 11 11:54 Vagrantfile
# -rwx read/write/execute per group 
# [the file owner perm][group of file][everyone else on system]
# display the text 'Hello'
# 4+2+1 (owner)
# r+w+x total 7
# 4+1 (group)


echo 'start of luser-demo01'
echo 'hello'
sudo chmod 755 ./luser-demo01.sh

# assign a value to a variable nospaces
# to reference the value use $
# single quotes prevent expansion 
# if they need to be interpreted use double
WORD='script'
echo "$WORD"  # output is : script 

#demostrange that single quotes output is : $WORD 
echo '$WORD'

# combine the variable with hard-coded text.
echo "This is a shell $WORD" #variable will return script

#display the contents of the variable 
echo "This is a shell ${WORD}" #same output

# Append text to the varible 
echo "${WORD}ing is fun!" #must use { } to append

# Create a new varible
ENDING='ed'

# combine the 2 variables
echo "This is ${WORD}${ENDING}"

# change the value reassignment
ENDING='ing'

# combine the 2 variables
echo "${WORD}${ENDING} is fun!!!"

# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class"
echo 'end of luser-demo01'

