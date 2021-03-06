#!/usr/bin/env bash
key_checker() {
    x=1
    while [ $x -le 70 ]; do
        salt-key -A -y
        x=$((x + 1))
        sleep 3
    done
    echo "All available keys accepted." &&
    touch /var/log/salt/master &&
    tail -f /var/log/salt/master
}

service salt-master start && key_checker
