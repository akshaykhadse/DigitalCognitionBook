#!/bin/bash

echo "# Setting enviornment variables"

if [ $1 = github ]
  then
    echo "# Set env vars in github"
    echo "REPO_URL=https://github.com/akshaykhadse/DigitalCognitionBook.git" >> $GITHUB_ENV
    echo "FILE_NAME=Digital_Cognition" >> $GITHUB_ENV
    echo "BOOK_LOCAL_PATH=_site/book" >> $GITHUB_ENV
    echo "BOOK_DOWNLOAD_PATH=https://akshaykhadse.github.io/DigitalCognitionBook/book" >> $GITHUB_ENV
    echo "BOOK_HTML=book.html" >> $GITHUB_ENV
    echo "BOOK_DIR=_book" >> $GITHUB_ENV
    echo "HEADER_FILE=header_includes.tex" >> $GITHUB_ENV
    echo "PUBLISH_NAME=Digital_Cognition" >> $GITHUB_ENV
    echo "# Set local env vars"
  else
    export REPO_URL=https://github.com/akshaykhadse/DigitalCognitionBook.git
    export FILE_NAME=Digital_Cognition
    export BOOK_LOCAL_PATH=_site/book
    export BOOK_DOWNLOAD_PATH=https://akshaykhadse.github.io/DigitalCognitionBook/book
    export BOOK_HTML=book.html
    export BOOK_DIR=_book
    export HEADER_FILE=header_includes.tex
    export PUBLISH_NAME=Digital_Cognition
    
fi

echo "# Added enviornment variables"

echo "\$REPO_URL: $REPO_URL"
echo "\$FILE_NAME: $FILE_NAME"
echo "\$BOOK_LOCAL_PATH: $BOOK_LOCAL_PATH"
echo "\$BOOK_DOWNLOAD_PATH: $BOOK_DOWNLOAD_PATH"
echo "\$BOOK_HTML: $BOOK_HTML"
echo "\$BOOK_DIR: $BOOK_DIR"
echo "\$HEADER_FILE: $HEADER_FILE"
echo "\$PUBLISH_NAME: $PUBLISH_NAME"

printf "\n\n"
