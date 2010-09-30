#!/bin/sh

cat list_path_stat.list | while read f; do
	printf "%-36s" $f
	[ -e $f ] && {
		stat $f | grep Uid
	}
done
