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

*   `~/etc/bash/os/OS/*`

    User initialisation files that are operating system specific. The
    directory __OS__ will match the output of `uname`, eg `Darwin` (on Mac OS
    X) and `Linux`.

*   `~/etc/bash/arch/ARCH/*`
    
    User initialisation files that are hardware architecture specific. The
    directory __ARCH__ will match the value of `$HOSTTYPE`, eg `x86_64`.

*   `~/etc/bash/domain/DOMAIN/*`

    User initialisation files that are host domain name specific. The
    directory __DOMAIN__ will match the output of `hostname` (without the
    host).

*   `~/etc/bash/host/HOST/*`

    User initialisation files that are host specific. The directory __HOST__
    will match the output of `hostname -s`.
