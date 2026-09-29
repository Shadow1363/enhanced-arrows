#!/bin/sh
# Zips the data pack into <name>.zip (default: folder name), ready for a world's datapacks/ folder.
set -e
cd "$(dirname "$0")"
name="${1:-$(basename "$PWD")}"
rm -f "$name.zip"
if [ -f pack.png ]; then icon=pack.png; else icon=; fi
zip -rq "$name.zip" pack.mcmeta data $icon -x '*.DS_Store'
echo "Built $name.zip"
