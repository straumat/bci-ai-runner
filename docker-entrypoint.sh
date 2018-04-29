#!/bin/bash

# Bin to create.
BINARY="/src/run"

# Delete old release.
if [ -f $BINARY ]; then
    rm $BINARY
fi

cd /src
cmake . && make

ls -ual /lib

#cpack --config /src/CMakeLists.txt

# Compile new release.
#g++ -I/src -I/lib /src/$SRC_FILE -o $BINARY

# If it has been successfully compiled, run it !
#if [ -f $BINARY ]; then
#    ./src/run
#fi