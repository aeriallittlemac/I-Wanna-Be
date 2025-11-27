#!/bin/bash

set -e

if [ "$#" -ne 1 ]; then
    read -p "Enter keyword: " KEYWORD
else
    KEYWORD=$1
fi

RED='\033[1;31m'    # File Name
GREEN='\033[1;32m'  # Line Number
YELLOW='\033[1;33m' # Matched Content
RESET='\033[0m'     # Reset

declare -A FOUND_MATCH

grep -rn "$KEYWORD" ./objects ./rooms | while IFS=: read -r FILE LINE_NUM CONTENT; do
    if [[ "$FILE" == *".gml" ]]; then
        echo -e "${RED}${FILE}:${GREEN}${LINE_NUM}:${YELLOW}${CONTENT}${RESET}"
    elif [[ -z "${FOUND_MATCH["$FILE"]}" ]]; then
        echo -e "${RED}${FILE}${RESET}"
        FOUND_MATCH["$FILE"]=1
    fi
done
