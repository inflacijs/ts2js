#!/bin/bash 

# 0. Put typescript files in `src` folder
mv $1 ./src/
echo $1

# 1. Build
docker build . --tag ts2js

# 2. Run compiler through docker container
# $(realpath src) explained: `$()` helps to avoid variable creation in another line. Realpath: Linux command to find file or folder realpath
docker run -v $(realpath src):/app/src --rm ts2js tsc src/*
