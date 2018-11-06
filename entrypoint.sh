#!/bin/bash

# I know it's ugly solution, but for now it works
chmod 0777 -R /var/www/

exec "$@"