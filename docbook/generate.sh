#!/bin/bash

# Script used to convert DocBook XML file to groff-format man page.
# author: @hosiet
#
# also see http://docbook2x.sourceforge.net/screenshots/docbook2X/Converting-to-man-pages.html

declare -a LIST
LIST=(cd.1p)
for NAME in ${LIST}; do
    db2x_xsltproc -s man ${NAME}.xml -o ${NAME}.mxml
    db2x_manxml --encoding="UTF-8" ${NAME}.mxml
done
rm ./*.mxml
