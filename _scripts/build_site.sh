#!/bin/bash

echo "## Build jekyll"
echo $GEM_HOME
JEKYLL_ENV=production bundle exec jekyll build --trace

printf "\n\n"