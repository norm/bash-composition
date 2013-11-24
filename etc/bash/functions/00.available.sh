# github:etc/bash/functions/00.available.sh
#
# Check if a specific program is available.

function available {
    local prog=$1
    type $prog &> /dev/null
}

function need {
    local prog=$1
    local have=0

    available $prog \
        && have=1

    if [ 0 = $have ]; then
        warn "${prog} is not installed"
        return 1
    fi
    return 0
}
