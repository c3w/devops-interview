#!/bin/sh

### this shell wrapper is needed as bin/www has a relative path to app.js
###
## API on default 3000/tcp
cd /var/www/bin && ./www
