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


Sourcing files
--------------

*   `source_or_warn` __file__

    Try to source __file__, and output a warning message if it does not exist.

*   `source_if_exists` __file__ [...]

    Source each __file__ argument, ignoring them if they do not exist rather
    than breaking.


Checking for software
---------------------

*   `available` __program__
    
    If you need to perform actions only if a certain piece of software is
    installed and in the `$PATH`, you can use available. A short and longer
    example:

        # use TextMate in preference
        available mate \
            && export VISUAL=mate

        # I am a nerd.
        available fortune && {
            echo ''
            fortune startrek
            echo ''
        }

*   `need` __program__

    The same as `available`, but issues a warning if the program is not found.
