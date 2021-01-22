#!/bin/bash

echo "## TEX to PDF"

echo "# Installing dependencies"
sudo apt-get -y install ruby-full build-essential zlib1g-dev

echo "# Update .bashrc"
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

echo "# Installing bundler"
sudo gem install bundler
sudo gem update --system

echo "# Installing from Gemfile"
bundle install

printf "\n\n"