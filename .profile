#!/bin/sh

echo "these are the best words"

mkdir -p logs
touch logs/great.log
echo "something" >> logs/great.log

export GREAT_VAR=thing
