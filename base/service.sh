#!/bin/sh
# This script will be executed in late_start service mode
MODPATH=${0%/*}

# log
exec 2> $MODPATH/logs/service.log
set -x

. $MODPATH/utils.sh || exit $?

wait_for_boot

fsv -D -l 0.0.0.0:27045

check_frida_is_up

#EOF
