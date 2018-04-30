#!/bin/bash

# Bin to create.
BINARY="/src/main"

# Delete old release.
if [ -f $BINARY ]; then
    rm $BINARY
fi

# Compile sources.
cd /src
cmake . && make

# If it has been successfully compiled, run it.
if [ -f $BINARY ]; then
    /src/main -port $NEO4J_PORT -host $NEO4J_HOSTNAME -password $NEO4J_PASSWORD -login $NEO4J_USERNAME -rule $RULE
fi