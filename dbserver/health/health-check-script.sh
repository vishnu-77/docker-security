#!/bin/bash

# Check if the database server is reachable
if nc -z -w 1 db.cyber23test 3306; then
    exit 0  # Success
else
    exit 1  # Failure
fi
