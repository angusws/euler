#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 Ennn.java"
fi

INPUT_FILE=$1
set -x
javac $INPUT_FILE && java "${INPUT_FILE%.*}"
