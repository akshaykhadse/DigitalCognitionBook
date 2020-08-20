#!/bin/bash

echo "# Setting enviornment variables"

if [ $1 = github ]
  then
    echo "# Set env vars in github"
    echo "::set-env name=REPO_URL::https://github.com/akshaykhadse/DigitalCognitionBook.git"
    echo "::set-env name=FILE_NAME::Digital_Cognition"
    echo "::set-env name=BOOK_LOCAL_PATH::_site/book"
    echo "::set-env name=BOOK_DOWNLOAD_PATH::https://akshaykhadse.github.io/DigitalCognitionBook/book"
    echo "::set-env name=BOOK_HTML::book.html"
    echo "::set-env name=BOOK_DIR::_book"
    echo "::set-env name=HEADER_FILE::header_includes.tex"
    echo "::set-env name=PUBLISH_NAME::Digital_Cognition"
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
