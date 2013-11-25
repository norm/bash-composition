# github:etc/bash/functions/10.output.sh
#
# Extensions to the standard "echo" command.

# Output a string, allowing it to contain ANSI sequences.
function print {
    # protect any % characters from being interpreted by printf
    local string=`echo "$@" | sed -e 's/%/%%/'`
    printf "${string}${reset}\n"
}

# Standard warning formatting.
function warn {
    $must_be_interactive
    
    (( warnings_issued += 1 ))
    [ $warnings_issued = 1 ] \
        && echo ''
    
    local string="$@"
    print "${bold}${red}${string}"
}
