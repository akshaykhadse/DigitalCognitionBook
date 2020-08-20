#!/bin/bash

echo "## HTML to TEX"
echo $BOOK_DIR/$BOOK_HTML
if [ $1 = desktop ]
  then
    echo "# Use local book.html"
    cp $BOOK_LOCAL_PATH/$BOOK_HTML $BOOK_DIR/$BOOK_HTML
  else
    echo "# Download book.html"
    wget $BOOK_DOWNLOAD_PATH/$BOOK_HTML -P $BOOK_DIR
fi

echo "# Convert HTML to TEX"
pandoc \
--from html \
--to latex \
--standalone \
--listings \
-V documentclass:book \
--top-level-division part \
--table-of-contents \
--include-in-header $BOOK_DIR/$HEADER_FILE \
--verbose \
--output $BOOK_DIR/$PUBLISH_NAME.tex \
$BOOK_DIR/$BOOK_HTML

printf "\n\n"