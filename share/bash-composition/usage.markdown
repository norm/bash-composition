General bash-composition usage
==============================

Rather than adding your settings, variables, aliases, and functions to one big
.bashrc file, bash-composition encourages many small files with one well
defined purpose.

Startup files and other configuration is kept in `~/etc` wherever possible.
Where software expects to use a 'dotfile' in the home directory to keep 
settings, this will try to deflect it:

*   If the config file can be changed via the environment, do so
    (eg `INPUTRC=$HOME/etc/input` rather than `~/.inputrc`), or
*   If the config file supports including other files, use a small stub file
    to include files from `~/etc` (eg `~/.bashrc`), or
*   Use a symbolic link to keep the original file in `~/etc`.

Some other familiar unix hierarchy directories are also adopted:

*   library files are expected to live in `~/lib`
*   log/runtime files are expected to live in `~/var`
*   documentation is expected to live in `~/share`


Where to put your modifications
-------------------------------

If you do nothing else, you should create a file at `~/etc/bash/rc/user.sh`
and use it to set `$DEFAULT_USER` to your normal user account (to see why, see
the %user macro in `~/share/bash-composition/prompt.sh`).

*   `~/.bashrc`
*   `~/.bash_profile`

    __Not here.__

    After installing bash-composition, these files will be replaced with a
    simple invocation of `~/etc/bash/initialise.sh`. You should not modify
    them futher, and if other software adds anything you should move it into
    its own separate file as detailed below.

*   `~/etc/bash/defaults/*`

    Default settings provided by bash-composition. You can override these 
    by adding files to the the `~/etc/bash/rc` directory.

*   `~/etc/bash/functions/*`

    Functions provided by bash-composition. If you find yourself extending
    bash-composition (rather than writing personal settings), this is where
    you should do it.

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

*   `~/etc/bash/login/*`

    User initialisation files that are only run in login shells, and not in
    subshells.

*   `~/etc/bash/subshell/*`

    User initialisation files thata are only run in subshells, and not in
    login shells.
