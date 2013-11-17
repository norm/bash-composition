General bash-composition usage
==============================

Rather than adding your settings, variables, aliases, and functions to one big
.bashrc file, bash-composition encourages many small files with one well
defined purpose.


Locations
---------

*   `~/.bashrc`, `~/.bash_profile`, `~/etc/bash/initalise.sh`

    These files are controlled by bash-composition and so should be left
    alone.

*   `~/etc/bash/functions/*`

    Functions provided by bash-composition.

*   `~/etc/bash/rc/*`
    
    User initialisation files. Normally, one for each group of related
    settings.
  
    As examples, if you have an alias that adjusts the behaviour of `ls` and
    an alias that adjusts the behaviour of `df`, you could keep them together
    in a file `filesystem.sh` or separate them into two separate files.
