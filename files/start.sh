#!/bin/bash


mkdir -p /etc/mumble

if [ ! -f "/etc/mumble/config.ini" ]; then
    cp /files/config.ini /etc/mumble/config.ini
fi

chown -R mumble /etc/mumble

exec /opt/mumble/murmur.x86 -fg -ini /etc/mumble/config.ini
