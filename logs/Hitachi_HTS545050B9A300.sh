#!/bin/sh

sudo smartctl -a /dev/sda > Hitachi_HTS545050B9A300 \
  && hg commit -A -m 'S.M.A.R.T. Hitachi 2.5" 500GB updated' \
  && hg push
