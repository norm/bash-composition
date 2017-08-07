bash-composition
================

A framework for bash initialisation, which encourages keeping many small
configuration files that share common themes or purposes, rather than one big
file with all of the things meshed together.



## Installing

Clone this repository, `cd` into your checkout, and run `./script/bootstrap`.

**WARNING**: This will overwrite your `~/.bashrc` and `~/.bash_profile`,
moving your original files to `~/.bashrc.bak` and `~/.bash_profile.bak`.

Documentation
-------------

More documentation can be found in the `share/bash-composition` folder:

*   [usage.markdown][usage] explains the general usage of the framework
*   [functions.markdown][functions] details what functions are provided
*   [prompt.markdown][prompt] details macros available for more conveniently
    setting the prompt

[usage]: https://github.com/norm/bash-composition/blob/master/share/bash-composition/usage.markdown
[functions]: https://github.com/norm/bash-composition/blob/master/share/bash-composition/functions.markdown
[prompt]: https://github.com/norm/bash-composition/blob/master/share/bash-composition/prompt.markdown
