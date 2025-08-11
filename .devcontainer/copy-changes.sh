#!/bin/bash

# if [[ -z "$1" ]]; then
#     echo "Must specify project name."
# fi

# PROJECT_NAME="$1"
PROJECT_NAME="I_Wanna_Be_prototype.yyp"

# shopt -s extglob

for dir in 'objects'; do
    # cp -r ~/GameMakerProjects/${PROJECT_NAME}/${dir}/!(*.yy) $dir
    SOURCE_DIR=~/GameMakerProjects/${PROJECT_NAME}/${dir}
    DEST_DIR=$dir
    EXCLUDE_EXT="yy"
    find "$SOURCE_DIR" -type f ! -name "*.$EXCLUDE_EXT" | while read -r FILE; do
        REL_PATH="${FILE#$SOURCE_DIR/}"
        DEST_PATH="$DEST_DIR/$REL_PATH"

        mkdir -p "$(dirname "$DEST_PATH")"
        cp "$FILE" "$DEST_PATH"
    done
done
