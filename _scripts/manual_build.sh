#!/bin/bash

# Set permissions
echo "## Set permissions"

echo "# Changing permissions *.sh"
find . -type f -name '*.sh' -exec chmod a+x {} \;
echo "# Changing permissions *.py"
find . -type f -name '*.py' -exec chmod a+x {} \;

printf "\n\n"

# Set enviornment variables
export BASH_ENV=./_scripts/enviornment_vars.sh

# Setup Jekyll
./_scripts/install_jekyll.sh

# Build
./_scripts/build_site.sh

# Install LaTeX
./_scripts/install_latex.sh

# Install pandoc
./_scripts/install_pandoc.sh

# HTML to TEX
./_scripts/html_to_tex.sh desktop

#: TEX to PDF
./_scripts/tex_to_pdf.sh

#: Clean Enviornment Variables
sed -i "s|source ${PWD}/_scripts/.env_vars||g" ~/.bashrc
source ~/.bashrc
