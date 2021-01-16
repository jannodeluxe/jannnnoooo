#!/bin/sh
# Enable USB Stick in DSM 7

case "$1" in
    start)
        echo "Start"
        echo "setting usbserial"
        /sbin/modprobe usbserial
        echo "setting ftdi_sio"
        /sbin/modprobe ftdi_sio
        echo "setting cdc-acm"
        /sbin/modprobe cdc-acm
        echo "Done..."
        ;;
   *)
        echo "Usage: $1 {start}"
        exit 1
esac
exit 0