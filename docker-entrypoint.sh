#!/bin/bash
set -e

# Install node_modules in another folder and link it at runtime
# so the source code folder can be mounted as a volume
ln -s /build/node_modules node_modules

case "$1" in
    "dev")
    exec npm run dev -- --host=${HOST}
    ;;
    "build")
    exec npm run build
    ;;
    "packages")
    exec cat /build/package-lock.json
    ;;
    *)
    echo "Unknown command: $1"
    ;;
esac