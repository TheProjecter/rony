#!/bin/sh

for i in `pidof ${1}`; do grep HWM /proc/${i}/status  ; done
