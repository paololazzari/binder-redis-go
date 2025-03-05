#!/bin/bash
redis-server --daemonize yes

tini -g -- start.sh "$@"