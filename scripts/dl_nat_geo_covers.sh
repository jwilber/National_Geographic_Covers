#!/bin/bash

# download National Geographic magazine covers and save them to data/

set -o errexit
set -o pipefail

IFS=','
while read c1 cover_image_url c3 c4; do
    wget "$cover_image_url" -P data/images
done < ../data/national_geographic_covers.csv