#!/bin/bash

# Bin to create.
BINARY="/src/run"

# Delete old release.
if [ -f $BINARY ]; then
    rm $BINARY
fi

# Compile new release.
g++ /src/$SRC_FILE -o $BINARY

# If it has been successfully compiled, run it !
if [ -f $BINARY ]; then
    ./src/run
fi