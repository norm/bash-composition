# github:etc/bash/functions/00.path.sh
#
# Easily extending the PATH and MANPATH.

function path_append {
    local directory="$1"
    
    if [ -x "$directory" ]; then
        echo "$PATH" | grep "$directory" &> /dev/null
        [ $? -eq 1 ] \
            && PATH="${PATH}:${directory}"
    fi
}

function path_prepend {
    local directory="$1"
    
    if [ -x "$directory" ]; then
        echo "$PATH" | grep "$directory" &> /dev/null
        [ $? -eq 1 ] \
            && PATH="${directory}:${PATH}"
    fi
}

function manpath_append {
    local directory="$1"
    
    if [ -x "$directory" ]; then
        echo "$MANPATH" | grep "$directory" &> /dev/null
        [ $? -eq 1 ] \
            && MANPATH="${MANPATH}:${directory}"
    fi
}
