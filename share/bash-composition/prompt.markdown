Prompt templates
================

In bash the prompt is changed by setting `$PS1`, but in bash-composition it
can be changed more easily by setting `$PS1_TEMPLATE`. This is then expanded
to automatically replace several human-readable macros to the actual,  more
cryptic, value PS1 needs.


Macros
------

*   `%#`

    Replaced with either a single % (if the account is not root), or
    a single `#` if the account is root. Serves as a visual clue for accounts
    using `su`.

    To change the output of the macro, set `$PROMPT_USERCHAR` and/or
    `$PROMPT_ROOTCHAR`.

*   `%dir(n)`

    Replaced with the current working directory, to a depth of __(n)__
    (minimum 1, maximum 9), trimming long directory names, and shortening home
    directory folders to `~` or `~user`.

    For example, if you were to change your current directory to
    `$HOME/Projects/bash-composition/etc`:

    *   `%dir1` comes out as `etc`
    *   `%dir2` comes out as `bash…tion/etc`
    *   `%dir3` comes out as `Projects/bash…tion/etc`
    *   `%dir4` comes out as `~/Projects/bash…tion/etc`
    *   etc

    To change the maximum length of each individual directory, override the 
    variable `PWDN_MAX_WORD` (defaults to 10).

*   `%domain`

    Replaced with the current host's domain name. To change the output of the
    macro, set `$PROMPT_DOMAIN`.

*   `%host`

    Replaced with the current hostname (without the domain name). To change
    the output of the macro, set `$PROMPT_HOST`.

*   `%user`
    
    Replaced with nothing if the current user is the same as `$DEFAULT_USER`,
    and '__user__@' otherwise. Useful as a reminder when connected to a
    different or shared account.

    To change the output of the macro when the accounts are different, set
    `$PROMPT_USER`. To always have the username, just use `$USER` instead.
