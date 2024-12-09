#!/bin/bash

LOG_FILE="/home/kadu/Escrita/Otelo/worklog.md"
BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ $BRANCH =~ GWKIMNRW-[0-9]+ || $BRANCH == "develop" ]]; then
    # Extract the relevant part if it matches "GWKIMNRW-xxxx"
    if [[ $BRANCH =~ (GWKIMNRW-[0-9]+) ]]; then
        CLEAN_BRANCH=${BASH_REMATCH[1]}
    else
        CLEAN_BRANCH=$BRANCH  # For "develop"
    fi

    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$TIMESTAMP >>> $CLEAN_BRANCH >>> Checkout" >> $LOG_FILE
fi

