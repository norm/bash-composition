# github:etc/bash/functions/prompt.sh
# 
# Setup the prompt environment variables.

# Echo the last N parts of the current working directory, also trimming 
# individual parts to no more than PWDN_MAX_WORD.
function pwdn {
    local maximum_word_length="${PWDN_MAX_WORD:=10}"
    local depth="$1"
    
    pwd | perl -e "
        \$_ = <>;
        if ( m{^ / $}x ) {
            print;
        }
        else {
            s{^ /Users/(\w+) }{~\$1}x;      # fix /Users/xxx to ~xxx
            s{^ /home/(\w+)  }{~\$1}x;      # fix /home/xxx  to ~xxx
            s{ ~ \$ENV{USER} }{~}x;         # fix ~$USER     to ~
            @dirs = split( m{/} );
            foreach ( 1 .. $depth ) {
                if ( @dirs ) {
                    my \$x    = pop @dirs;
                    my \$half = int( ( $maximum_word_length - 1 ) / 2 );
                    
                    # if this directory name is too large, truncate
                    # the middle and replace it with an ellipsis
                    \$x =~ m{^ (.{0,\$half}) (.*?) (.{0,\$half}) $}x;
                    \$x  = \"\$1…\$3\"  if ( length( \$2 ) > 2 );
                    push( @return, \$x );
                }
            }
            print join( q(/), reverse @return );
        }
    "
}

# Expand any macros in the prompt template for use in the prompt.
function expand_prompt_template {
    local template="$1"

    # %host macro
    local host="${PROMPT_HOST:=${HOST}}"
    
    # %user macro
    local user=''
    [ "$USER" != "$DEFAULT_USER" ] \
        && user="${PROMPT_USER:=${USER}@}"

    echo "$template" | sed                                                  \
        -e 's/%dir([0-9])/$(pwdn \1)/g'                                     \
        -e "s/%domain/${domain}/g"                                          \
        -e "s/%user/${user}/g"                                              \
        -e "s/%host/${host}/g"                                              \
        -E
}
