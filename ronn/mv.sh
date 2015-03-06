#!/usr/bin/bash

mv *.ronn ~/manpages/ronn/
mv *.?.html ~/manpages/html/
mv *.1 ~/manpages/man/zh_CN/man1/
mv *.5 ~/manpages/man/zh_CN/man5/
echo "move done"

ronn ~/manpages/html/list.ronn
echo "update list done" 
