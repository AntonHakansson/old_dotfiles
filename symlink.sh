#!/usr/bin/env bash

set -e

if [ $# -ne 1 ]; then
    echo $0: usage: ./symlink.sh [theme name]
    exit 1
fi

DOTBOT_DIR="dotbot"
DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMEDIR="$BASEDIR/$1/"
THEMECONFIG="$1/install.conf.json"

# global
"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "global.conf.json" 

# Theme specific
"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${THEMEDIR}" -c "${THEMECONFIG}"  
