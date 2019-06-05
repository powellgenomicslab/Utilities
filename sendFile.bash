#!/bin/sh
# Include parse_yaml function
. parse_yaml.sh

# User needs to supply the following
recipient="$1"
subject="$2"
message="$3"
files="$4"

# Read in yaml_file with username and yaml key
eval $(parse_yaml ~/FileSenderConfig.yaml "login_")

python ./filesender.py -u "$login_user" -a "$login_api" -s "$subject" -m "$message" -r "$recipient" "$files"
