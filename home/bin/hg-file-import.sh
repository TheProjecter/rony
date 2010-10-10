#!/bin/sh


TIMESTAMP=$(stat -c %y "${1}" | cut -b -19 )

hg add "${1}"
hg commit --date "${TIMESTAMP}" -m "${2}"
