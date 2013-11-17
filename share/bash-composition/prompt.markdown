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

*   `%##`

    Replaced with multiple symbols (as for `%#` above) that represent the
    current depth of subshells. For example, logging in, then running bash
    will give '%%', then running `su -` will give '%%#'.

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

*   `%window`

    Replaced with the current 'window' when inside screen. To change the
    output of the macro, set `$PROMPT_WINDOW`.


Terminal sequences
------------------

An ANSI compatible terminal supports colour and visual formatting effects.
The following control these:

*   `%B` or `%bold` turns bold on, `%b` or `%nobold` turns bold off
*   `%I` or `%italic` turns italics on, `%i` or `%noitalic` turns italics off
*   `%U` or `%under` turns underlining on, `%u` or `%nounder` turns 
    underlining off
*   `%R` or `%reverse` turns reverse video on, `%r` or `%noreverse` turns
    reverse video off
*   `%S` or `%strike` turns strike-through on, `%s` or `%nostrike` turns 
    strike-through off
*   `%ck` or `%black` sets the foreground colour to black
*   `%cb` or `%blue` sets the foreground colour to blue
*   `%cr` or `%red` sets the foreground colour to red
*   `%cm` or `%magenta` sets the foreground colour to magenta
*   `%cg` or `%green` sets the foreground colour to green
*   `%cc` or `%cyan` sets the foreground colour to cyan
*   `%cy` or `%yellow` sets the foreground colour to yellow
*   `%cw` or `%white` sets the foreground colour to white
*   `%cn` or `%normal` sets the foreground colour to its normal colour
*   `%Ck` or `%bgblack` sets the background colour to black
*   `%Cb` or `%bgblue` sets the background colour to blue
*   `%Cr` or `%bgred` sets the background colour to red
*   `%Cm` or `%bgmagenta` sets the background colour to magenta
*   `%Cg` or `%bggreen` sets the background colour to green
*   `%Cc` or `%bgcyan` sets the background colour to cyan
*   `%Cy` or `%bgyellow` sets the background colour to yellow
*   `%Cw` or `%bgwhite` sets the background colour to white
*   `%Cn` or `%bgnormal` sets the background colour to its normal colour
*   `%X` or `%reset` resets any terminal effects back to normal
