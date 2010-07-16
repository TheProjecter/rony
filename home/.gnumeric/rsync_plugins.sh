#!/bin/dash

VERSION=1.10.7

rsync -auvz /usr/lib64/gnumeric/${VERSION}/plugins/python-loader ~/.gnumeric/${VERSION}/plugins
