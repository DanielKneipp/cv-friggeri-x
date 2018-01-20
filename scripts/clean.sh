#!/usr/bin/env bash

# Get the path of the current script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Extension files to detele
EXTS="aux bbl blg brf idx ilg ind lof log lol lot out toc synctex.gz run.xml bcf"

# Name of the files. If the argument is not passed, all files
# with the selected extensions will be deleted.
FILE_NAME=${1:-*}

# Delete the files
for ext in $EXTS; do
    rm -f "$DIR/../$FILE_NAME.$ext"
done