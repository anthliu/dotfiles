#!/bin/bash

prepend_zero () {
    seq -f "%02g" $1 $1
}

artist=$(echo -n $(cmus-remote -C status | grep artist -m 1 | rev | cut -c -40 | rev))
song=$(echo -n $(cmus-remote -C status | grep title -m 1 | rev | cut -c -20 | rev))

if [ -z "$artist" ]
then
    echo ""
else
    position=$(cmus-remote -C status | grep position | cut -c 10-)
    minutes1=$(prepend_zero $(($position / 60)))
    seconds1=$(prepend_zero $(($position % 60)))

    duration=$(cmus-remote -C status | grep duration | cut -c 10-)
    minutes2=$(prepend_zero $(($duration / 60)))
    seconds2=$(prepend_zero $(($duration % 60)))

    echo -n "$artist  -  $song [$minutes1:$seconds1 / $minutes2:$seconds2]"
fi
