Functions provided by bash-composition
======================================

Interactive only
----------------

*   `$must_be_interactive`

    If a block of initialisation code only makes sense in an interactive
    session, put this at the start.


Output
------

*   `print` __string__

    Prints __string__, allowing ANSI terminal sequences to be embedded.
    For example:

        print "${bgblue}${yellow}Yellow on blue text"

    The terminal sequences can be found in 
    `~/etc/bash/functions/00.ansi_escapes.sh`.

*   `warn` __string__

    Prints __string__ in bold red.


Paths
-----

*   `manpath_append` __directory__
    
    Adds __directory__ to the end of `$MANPATH` if it is not already an entry.
    
*   `path_append` __directory__
    
    Adds __directory__ to the end of `$PATH` if it is not already an entry.
    
*   `path_prepend` __directory__
    
    Adds __directory__ to the start of `$PATH` if it is not already an entry.
