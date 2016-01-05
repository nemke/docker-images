#!/bin/bash

chown nginx:nginx -R /var/www

exec "$@"