#!/bin/sh

# see http://docbook2x.sourceforge.net/screenshots/docbook2X/Converting-to-man-pages.html

db2x_xsltproc -s man test.xml -o test.mxml
db2x_manxml test.mxml
