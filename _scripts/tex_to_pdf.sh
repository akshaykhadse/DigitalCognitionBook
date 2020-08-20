#!/bin/bash

echo "## TEX to PDF"

echo "# Generate PDF: Pass 1"
pdflatex -output-directory=$BOOK_DIR $BOOK_DIR/$PUBLISH_NAME.tex

echo "# Generate PDF: Pass 2"
pdflatex -output-directory=$BOOK_DIR $BOOK_DIR/$PUBLISH_NAME.tex

printf "\n\n"