#!/bin/bash

if ! command -v helm &> /dev/null
then
    echo "Helm is not installed or cannot be found."
    exit 127
fi

cd my-monitoring
helm dependency update
