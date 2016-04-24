#!/bin/sh
lock() {
    i3lock -c 000033
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && sudo systemctl suspend
        ;;
    hibernate)
        lock && sudo systemctl hibernate
        ;;
    reboot)
        sudo reboot
        ;;
    shutdown)
        sudo shutdown now
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
