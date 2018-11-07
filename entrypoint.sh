#!/bin/bash

# I know it's ugly solution, but for now it works
chmod 0755 -R /var/www/

exec "$@"