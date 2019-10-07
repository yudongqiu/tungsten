#!/usr/bin/env bash
GENERATOR=""
if [[ -n "$*" ]];
then
    GENERATOR=(-G "$*")
fi

ROOTDIR="../.."
    
rm -rf build
mkdir build
cd build

mkdir release
cd release
cmake -DCMAKE_BUILD_TYPE=Release "${GENERATOR[@]}" ${ROOTDIR}
cd ..

mkdir debug
cd debug
cmake -DCMAKE_BUILD_TYPE=Debug "${GENERATOR[@]}" ${ROOTDIR}
