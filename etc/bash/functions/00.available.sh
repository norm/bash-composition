# github:etc/bash/functions/00.available.sh
#
# Check if a specific program is available.

function available {
    local prog=$1
    type $prog &> /dev/null
}
