#!/bin/bash

echo 'Download database from Maxmind.com'
curl -o db/GeoLiteCity.dat.gz http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz

echo 'Unzip database from Maxmind.com'
gunzip db/GeoLiteCity.dat.gz

echo 'Copy config-dist.js to config.js'
cp ./config/config-dist.js ./config/config.js
