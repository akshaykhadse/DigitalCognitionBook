#!/bin/bash

echo "## Build jekyll"
echo $GEM_HOME
bundle exec jekyll build --trace

printf "\n\n"