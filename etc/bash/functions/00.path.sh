# github:etc/bash/functions/00.path.sh
#
# Easily extending the PATH and MANPATH.

function strip_path_dir {
    local directory="$1"

    echo "$PATH" \
        | sed -e 's/:/\n/g' \
        | grep -v "^${directory}\$" \
        | tr '\n' ':' \
        | sed -e 's/:$//'
}

function path_append {
    local directory="$1"

    [ -x "$directory" ] \
        && PATH="$(strip_path_dir "$directory"):$directory"
}

function path_prepend {
    local directory="$1"
    
    [ -x "$directory" ] \
        && PATH="$directory:$(strip_path_dir "$directory")"
}

function manpath_append {
    local directory="$1"
    
    if [ -x "$directory" ]; then
        echo "$MANPATH" | grep "$directory" &> /dev/null
        [ $? -eq 1 ] \
            && MANPATH="${MANPATH}:${directory}"
    fi
}
