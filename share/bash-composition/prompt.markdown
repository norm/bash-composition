Prompt templates
================

In bash the prompt is changed by setting `$PS1`, but in bash-composition it
can be changed more easily by setting `$PS1_TEMPLATE`. This is then expanded
to automatically replace several human-readable macros to the actual,  more
cryptic, value PS1 needs.


Macros
------

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