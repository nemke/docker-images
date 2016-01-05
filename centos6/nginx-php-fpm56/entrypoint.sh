#!/bin/bash

chown nginx:nginx -R /var/www/source

exec "$@"