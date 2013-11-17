# github:etc/bash/functions/00.user.sh
#
# Setup the default user. This must be overridden later, or it will
# trigger an error (this is to get people to explore).

export DEFAULT_USER="${DEFAULT_USER:=NOTCONFIGURED}"
