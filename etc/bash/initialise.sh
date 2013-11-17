# github:etc/bash/initialise.sh
#
# This is the master initialisation (rc) file for bash. Anything in this
# file gets applied to every bash shell, "login" or otherwise.

BASH_BASE=${HOME}/etc/bash

# Do anything the user wants.
for rc_file in $( echo ${BASH_BASE}/rc/* ); do
    source $rc_file
done
