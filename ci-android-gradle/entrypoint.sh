#!/bin/bash

set -e

if [ $# -eq 0 ]; then

/usr/sbin/sshd -D

else

/etc/init.d/ssh start
exec "$@"

fi
