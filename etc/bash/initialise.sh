# github:etc/bash/initialise.sh
#
# This is the master initialisation (rc) file for bash.

BASH_BASE=${HOME}/etc/bash

# Set up the basic functions/settings.
for rc_file in $( echo ${BASH_BASE}/functions/* ); do
    source $rc_file
done

# Do anything the user wants.
for rc_file in $( echo ${BASH_BASE}/rc/* ); do
    source $rc_file
done

# Setup anything that is specific to the current location/hardware.
source_if_exists ${BASH_BASE}/os/${HOSTOS}/*
source_if_exists ${BASH_BASE}/arch/${HOSTTYPE}/*
source_if_exists ${BASH_BASE}/domain/${DOMAIN}/*
source_if_exists ${BASH_BASE}/host/${HOST}/*

[ $is_login ] \
    && source_if_exists ${BASH_BASE}/login/*        \
    || source_if_exists ${BASH_BASE}/subshell/*
is_login=0

# Set the prompts if templates are being used.
[ -n "$PS1_TEMPLATE" ] \
    && PS1=$( expand_prompt_template "$PS1_TEMPLATE" )
[ -n "$PS2_TEMPLATE" ] \
    && PS2=$( expand_prompt_template "$PS2_TEMPLATE" )
[ -n "$PS3_TEMPLATE" ] \
    && PS3=$( expand_prompt_template "$PS3_TEMPLATE" )
[ -n "$PS4_TEMPLATE" ] \
    && PS4=$( expand_prompt_template "$PS4_TEMPLATE" )
