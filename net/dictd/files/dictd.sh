#!/bin/sh

# $FreeBSD$

DICTD=%%PREFIX%%/sbin/dictd

# DICTD_OPTIONS="-put -command_line -options -for -dictd -here"
DICTD_OPTIONS=""

DICTD_PID_FILE=/var/run/dictd.pid

case "$1" in
	start)
		if [ -x $DICTD ]; then
			echo "dictd starting."
			$DICTD $DICTD_OPTIONS
		else
			echo "dictd.sh: cannot find $DICTD or it's not executable"
		fi
		;;

	stop)
		if [ ! -f $DICTD_PID_FILE ]; then
			exit 0
		fi
		dictdpid=`cat $DICTD_PID_FILE`
		if [ "$dictdpid" -gt 0 ]; then
			echo "Stopping the dictd server."
			kill -15 $dictdpid 2>&1 > /dev/null
		fi
		rm -f $DICTD_PID_FILE
		;;
	*)
		echo "Usage: dictd.sh { start | stop }"
		;;
esac
