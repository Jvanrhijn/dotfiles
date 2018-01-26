#!/bin/sh

toggle_rs() {
    if pgrep -x "redshift"; then
        kill -15 $(pgrep redshift)
    else
        redshift &
    fi
}

toggle_rs
