# github:etc/bash/functions/00.ansi_escapes.sh
# 
# ANSI terminal codes, used for adjusting colours and styling.

reset="\e[0m"
bold="\e[1m"
nobold="\e[22m"
italic="\e[3m"
noitalic="\e[23m"
under="\e[4m"
nounder="\e[24m"
inverse="\e[7m"
noinverse="\e[27m"
strike="\e[9m"
nostrike="\e[29m"
black="\e[30m"
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
magenta="\e[35m"
cyan="\e[36m"
white="\e[37m"
normal="\e[39m"
bgblack="\e[40m"
bgred="\e[41m"
bggreen="\e[42m"
bgyellow="\e[43m"
bgblue="\e[44m"
bgmagenta="\e[45m"
bgcyan="\e[46m"
bgwhite="\e[47m"
bgnormal="\e[49m"

# Escaped versions for use in the prompt templates.
preset='\\[\\e[0m\\]'
pbold='\\[\\e[1m\\]'
pnobold='\\[\\e[22m\\]'
pitalic='\\[\\e[3m\\]'
pnoitalic='\\[\\e[23m\\]'
punder='\\[\\e[4m\\]'
pnounder='\\[\\e[24m\\]'
pinverse='\\[\\e[7m\\]'
pnoinverse='\\[\\e[27m\\]'
pstrike='\\[\\e[9m\\]'
pnostrike='\\[\\e[29m\\]'
pblack='\\[\\e[30m\\]'
pred='\\[\\e[31m\\]'
pgreen='\\[\\e[32m\\]'
pyellow='\\[\\e[33m\\]'
pblue='\\[\\e[34m\\]'
pmagenta='\\[\\e[35m\\]'
pcyan='\\[\\e[36m\\]'
pwhite='\\[\\e[37m\\]'
pnormal='\\[\\e[39m\\]'
bgblack='\\[\\e[40m\\]'
pbgred='\\[\\e[41m\\]'
pbggreen='\\[\\e[42m\\]'
pbgyellow='\\[\\e[43m\\]'
pbgblue='\\[\\e[44m\\]'
pbgmagenta='\\[\\e[45m\\]'
pbgcyan='\\[\\e[46m\\]'
pbgwhite='\\[\\e[47m\\]'
pbgnormal='\\[\\e[49m\\]'

# Start/finish set xterm title sequence
xtitlestart='\\[\\e]0;'
xtitlefinish='\\007\\]'
