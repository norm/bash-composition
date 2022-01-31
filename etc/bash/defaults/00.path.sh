# github:etc/bash/defaults/00.path.sh
#
# Set the default PATH.

path_append /usr/local/bin
path_append /usr/local/sbin
path_append /usr/bin
path_append /bin
path_append /usr/sbin
path_append /sbin

path_prepend ${HOME}/bin
