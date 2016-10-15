# github:etc/bash/functions/20.source.sh
#
# Extensions to the standard "source" command.

# Source the named script which should exist.
function source_or_warn {
    local file=$1
    
    [ -f $file ] \
        && source $file \
        || warn "${file} does not exist"
}

# Source the named script(s) if they exist (missing files are not an error).
function source_if_exists {
    local file="$1"

    while [ -n "$file" ]; do
        [ -f $file ] \
            && source $file
        
        shift
        file="$1"
    done
}

# Source any scripts from a directory tree that allows for customisation
# based upon computer-specific flags such as hostname.
function source_init_tree {
    local dir="$1"

    source_if_exists ${dir}/*.sh
    source_if_exists ${dir}/os-${HOSTOS}/*.sh
    source_if_exists ${dir}/arch-${HOSTTYPE}/*.sh
    source_if_exists ${dir}/domain-${DOMAIN}/*.sh
    source_if_exists ${dir}/host-${HOST}/*.sh
}
