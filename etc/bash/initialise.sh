# github:etc/bash/initialise.sh
#
# This is the master initialisation (rc) file for bash.

BASH_BASE=${HOME}/etc/bash
warnings_issued=0

# Set up the basic functions/settings.
for rc_file in $( echo ${BASH_BASE}/functions/* ); do
    source $rc_file
done

# Set up defaults.
source_if_exists ${BASH_BASE}/defaults/*

# Setup anything the user wants.
source_if_exists ${BASH_BASE}/rc/*

# Setup anything that is specific to the current location/hardware.
source_if_exists ${BASH_BASE}/os/${HOSTOS}/*
source_if_exists ${BASH_BASE}/arch/${HOSTTYPE}/*
source_if_exists ${BASH_BASE}/domain/${DOMAIN}/*
source_if_exists ${BASH_BASE}/host/${HOST}/*

# Setup anything exclusive to login or subshells.
[ $is_login ] \
    && source_if_exists ${BASH_BASE}/login/*        \
    || source_if_exists ${BASH_BASE}/subshell/*
is_login=0

# Check that the user has configured things.
if [ "$DEFAULT_USER" = 'NOTCONFIGURED' ]; then
    warn "** bash-composition is not correctly configured, to learn more read"
    warn "   ~/share/bash-composition/usage.markdown"
    echo ''
fi

# Set the prompts if templates are being used.
[ -n "$PS1_TEMPLATE" ] \
    && PS1=$( expand_prompt_template "$PS1_TEMPLATE" )
[ -n "$PS2_TEMPLATE" ] \
    && PS2=$( expand_prompt_template "$PS2_TEMPLATE" )
[ -n "$PS3_TEMPLATE" ] \
    && PS3=$( expand_prompt_template "$PS3_TEMPLATE" )
[ -n "$PS4_TEMPLATE" ] \
    && PS4=$( expand_prompt_template "$PS4_TEMPLATE" )

# Add the current prompt symbol as a quick visual indicator of shell depth.
[ `id -u` == '0' ]                                                      \
    && export PROMPT_SYMBOLS="${PROMPT_SYMBOLS}${PROMPT_ROOTCHAR:=#}"   \
    || export PROMPT_SYMBOLS="${PROMPT_SYMBOLS}${PROMPT_USERCHAR:=%}"

[ $warnings_issued ] \
    && echo ''
