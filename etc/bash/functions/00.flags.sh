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

# The current Operating System type (eg. Linux, Darwin, NetBSD)
export HOSTOS=`uname`

# The current machine architecture
export HOSTARCH=`uname -m`

# The current host's name, in short form (without domain name).
export HOST=`hostname -s`

# The current domain name.
export DOMAIN=`hostname | sed -e "s/${HOST}.//"`
