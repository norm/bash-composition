# github:etc/bash/functions/00.flags.sh
#
# Set up some basic signposts, used to control later behaviour.

# Whether or not the shell is running for a user, or in a script.
if [[ $- == *i* ]]; then
    export INTERACTIVE=1
    must_be_interactive=''
else
    export INTERACTIVE=0
    must_be_interactive='return'
fi
