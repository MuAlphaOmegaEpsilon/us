#!/bin/sh
# Please, move this script into the root directory of repository before running it
set -euf

cd "$(dirname "$0")"/..

rm -rf build
cmake -B build/debug -DCMAKE_PREFIX_PATH=~/Qt/6.4.1/gcc_64/ -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_CXX_FLAGS="-Og"
cmake -B build/release -DCMAKE_PREFIX_PATH=~/Qt/6.4.1/gcc_64/ -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_CXX_FLAGS="-O2"
