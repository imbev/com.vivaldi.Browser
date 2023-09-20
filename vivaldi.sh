#!/usr/bin/env bash

cd /app/vivaldi

exec cobalt "$@" --no-default-browser-check
