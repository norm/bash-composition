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
