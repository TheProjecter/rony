#!/bin/sh


TIMESTAMP=$(stat -c %y "${1}" | cut -b -19 )

git add "${1}"
git commit --date "${TIMESTAMP}" -m "${2}"
