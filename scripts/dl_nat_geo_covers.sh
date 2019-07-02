#!/bin/bash

# download National Geographic magazine covers and save them to ../data/images/

set -o errexit
set -o pipefail

string_split="?type"

IFS=','
while read c1 cover_image_url month year; do
	# extract url (just jpg part)
	image_url=${cover_image_url%$string_split*}
	# specify save path
	save_path="../data/images/cover_${month}_${year}.jpg"
	# download image
    wget "$image_url" -O $save_path  
done < ../data/national_geographic_covers.csv
