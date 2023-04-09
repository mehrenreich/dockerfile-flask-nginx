#!/usr/bin/env sh

gunicorn -w 4 -D app:app
nginx -g "daemon off;"
