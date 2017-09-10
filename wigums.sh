#!/bin/bash

# ▞▀▖▙ ▌▌ ▌ ▌ ▌▗                  ▗        ▜    ▐        
# ▌▄▖▌▌▌▌ ▌ ▌▖▌▄ ▞▀▌▌ ▌▛▚▀▖▞▀▘ ▞▀▘▄ ▛▚▀▖▌ ▌▐ ▝▀▖▜▀ ▞▀▖▙▀▖
# ▌ ▌▌▝▌▌ ▌ ▙▚▌▐ ▚▄▌▌ ▌▌▐ ▌▝▀▖ ▝▀▖▐ ▌▐ ▌▌ ▌▐ ▞▀▌▐ ▖▌ ▌▌  
# ▝▀ ▘ ▘▝▀  ▘ ▘▀▘▗▄▘▝▀▘▘▝ ▘▀▀  ▀▀ ▀▘▘▝ ▘▝▀▘ ▘▝▀▘ ▀ ▝▀ ▘  
# and co(ws).
# wigums simulator. GPL3
# By grepsuzette
# Courtesy of ##Slackware
#   in hommage to dwarven ponies.

progName="$( basename "$0" )"
version=0.1

invoke_flatulence() {
  case $(( $RANDOM % 14 )) in
    1|2|3|4) echo "* wigums farts a little" ;;
    5) echo "* wigums farts a little again" ;;
    6) echo "* wigums is asleep" ;;
    7|8|9) echo "* wigums types a joke" ;;
    10) echo "* wigums types a joke on shunodu's mom" ;;
    11) echo "* wigums thinks about something" ;;
    *) echo "* wigums laughs" ;;
  esac
}

define(){ IFS='\n' read -r -d '' ${1} || true; }

define helpString <<EOF
Wigyms simulator v$version
Syntax: $progName [OPTIONS]

OPTIONS:
 --once           Issue just one line from wigums, and exit...
 --channelonce -1 Issue just one line from the channel, and exit
 --help -h        Show help
 --version -v     Show version and exit
EOF

for i in "$@"; do
    case $i in
        --once ) shift; optOnce=1;;
        -1 | --channelonce ) shift; optChannelOnce=1;;
        --help | -h ) shift; echo "$helpString" ; exit 0 ;;
        --version | -v ) shift; echo "$version"; exit 0 ;;
        -* ) echo "Unknown option: $1"; exit 1 ;;
        *) ;;
    esac
done

if [[ -z $optOnce  ]]; then
    if [[ -z $optChannelOnce ]]; then
        echo -n "Topic for ##slackware is \"No smiley on a single line."
        echo -n " Fart all you want. Systemd sucks.\"" 
        echo " set by someone (~someone) on crack"
        printf '\055%.0s' {0..122}
        printf '\n'
    fi
    while true; do
        if [[ -z $optChannelOnce ]]; then
            invoke_flatulence
            speed=3
            sleep $(( $RANDOM % $speed + $RANDOM % $speed + $RANDOM % $speed ))
        fi

        nicks=(
            goarilla DoverMo shonudo Kamii KarlFranz  
            SkyWise ttkp Tekken rotten_bunny Chibapet
            ProbablyAndy shunodu mishehu ut geggam rob0 
        )
        subject=(
        "terminal" "last gf" "your script" "it" "Plant" 
        "Global warming" "ponies" "the late 90s" "the 80s" "Richard Stallman" 
        "Obama" "cartman's mom" "DEC" "HP" "Apple" "Paris" "firefox" "SBo" 
        "systemd" "FreeBSD" "my team" "my ass" "my computer" "rain forest" 
        "or just it was you who" "KDE" "to mention on your CV if it ever" 
        "gentoo" "#perl" "#ubuntu" "QBasic" "Linux"
        "Pat" "cloud" "docker" "Red Hat" "they" "NSA" "Windows"
        "IPv6" "x86 instructions" "weyland" "turtles" "the government" 
        "feminists" "gore movies" "guns" "the french" "the belgium"
        "the chinese" "Poettering" "Larry" "Julian Assange" 
        "Telecom"  "tor" "/dev/urandom" "GNU/Hurd" "republicans"
        "The NASA" "Facebook" "Solaris" "VMS" "my 80 GB ssd" "My beer"
        "The nazis" "something" "everybody" "the hell" "my roommates"
        )
        
        verb=(
        "got stucked..." "was at fault" "has not been updated" "went nuts"
        "didn't help" "removed any allusion to my involvement" 
        "got drunk" "have got messy" 
        "didn't exist"
        "froze" "beeped" "made me doubt of reality" "fucked up" 
        "disappeared in the noise" "didn't care for one bit" 
        "got stopped all the time by people" "somehow raised from the dead" 
        ".. it's slow as hell" "never got functional"
        "had something to do with chicken" "sounded alright"
        "watched me with its cold eyes..." "seemed decent" 
        "was doing okay" "can kiss my ass"
        "kept becoming increasingly more hostile towards me" 
        "kicked ya in da nuts" "keeps bugging at wigum's shit" 
        "will never learn" "just won't die..." "should have said no to drugs" 
        "is proof"
        " didn't appear kosher" "should have made the frontpage"
        "hazn't paid anyone for years now" 
        "would probably qualify as nice and pretty by tomorrow's standards"
        "is fat" "has taken an unexpected turn lately" 
        "died on me, or so it seems" "is flat" "is boring"
        )

        one=(
        "yeah" "*sigh*" "no!" "Okay." "Aww, Thanks." "I know" 
        "what do you mean?" "what" "*confesses...*" "That's what I do" 
        "**facepalms**" "it's a tradeoff" "*shrughs*" "*bahs*" "huh?" 
        "pew pew" "who said that?" "yep" "you don't want to know" 
        "interesting" "I don't suppose so" 
        "tar -xzf zipla/name.gz" "wft.." "Are you on drugs?" 
        "for how long?" "no it's not that bad. never was actually" 
        "denies everything" "Hey" "how goes it?" "it's fine" "it's magic" 
        "SF is down again.." "not a chance" "you think they would learn?" 
        "actually.. hmm forget it" "dude, I saw it with my own eyes..." 
        "sounds about right" "it's usually the answer" "no" 
        "*nooes*" "*nods in agreement*" "please" "*is confused*"
        "sounds like a pleonasm" "hmmmm" "you wish" 
        "I feel a connection between us" "disapproves" 
        "disapproves the usage of such methods"
        "I feel in pain now" "i like it" "I don't feel that way" 
        "neat." "fine" "ah" "heh" "guess what"
        "Hahaha" "you're slow" "you're mad" "you're mean" "don't say that..." 
        "you have it backwards" "let's talk about sex" "brb"
        "dude..." "That's rude" "ooch"
        "Yummy" "true that" "what do you mean?" "told you so" 
        "your mama is" "not true" 
        "yes" "again." "you're a lyier." 
        )
        
        for ((x=0; x <= $(($RANDOM % 5 - 1)); x++)); do
            nick=${nicks[$(( $RANDOM % ${#nicks[@]} ))]}
        	echo -n "<$nick> "
            if [[ $(($RANDOM % 4)) == 1 ]]; then
                echo ${one[$(( $RANDOM % ${#one[@]} ))]}
            else
                echo -n "${subject[$(( $RANDOM % ${#subject[@]} ))]} "
                echo ${verb[$(( $RANDOM % ${#verb[@]} ))]}
            fi

            [[ -n $optChannelOnce ]] && exit 0
            sleep $(( $RANDOM % $speed + $RANDOM % $speed + $RANDOM % $speed ))
        done
    done
else invoke_flatulence
fi
