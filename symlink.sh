#!/usr/bin/env bash

set -e

if [ $# -ne 1 ]; then
    echo $0: usage: ./symlink.sh [theme name]
    exit 1
fi

CONFIG="$1.conf"
DOTBOT_DIR="dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"
git submodule update --init --recursive "${DOTBOT_DIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "${CONFIG}"
