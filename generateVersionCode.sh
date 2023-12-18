#!/bin/bash

# Generate an empty text file in the correct directory
OUTPUT_FILE=./versionCode.txt
touch $OUTPUT_FILE

# Change the permissions of the text file so that Jenkins write to it
chmod o+w $OUTPUT_FILE

# Generate the version code basing on the total commits reached from the current branch
VERSION_CODE=$(git rev-list --count HEAD)

echo $VERSION_CODE > $OUTPUT_FILE
echo "VERSION CODE: $VERSION_CODE"
