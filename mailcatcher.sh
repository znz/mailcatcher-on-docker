#!/bin/sh
cd /home/app
exec bundle exec mailcatcher --ip 0.0.0.0 -f
