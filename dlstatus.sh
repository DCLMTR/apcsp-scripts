#!/bin/bash
for i in {01..11}; do
	ping -c 1 dl$i 2>&1 > /dev/null
	if [ $? -eq 0 ] ; then
		echo dl$i":alive"
	else
		echo dl$i":dead"
	fi
done
exit 0


