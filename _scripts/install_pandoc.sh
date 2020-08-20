#!/bin/bash

echo "## Install pandoc"

if ! command -v pandoc &> /dev/null
then
    echo "# pandoc could not be found"

    echo "# Download pandoc"
    sudo wget https://github.com/jgm/pandoc/releases/download/2.10.1/pandoc-2.10.1-1-amd64.deb

    echo "# Install pandoc"
    sudo dpkg -i pandoc-2.10.1-1-amd64.deb
fi

echo "# pandoc version info:"
pandoc --version

printf "\n\n"
