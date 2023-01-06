#!/bin/sh
set -euf

cd "$(dirname "$0")"/..

lupdate -recursive qml src -ts translations/it.ts
