#!/bin/bash

echo "## Install LaTeX"

echo "# Installing texlive"
sudo apt-get -y install texlive-latex-base texlive-fonts-extra texlive-latex-extra

echo "# pdflatex is located at:"
which pdflatex

printf "\n\n"