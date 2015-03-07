#!/usr/bin/bash

cd ~/manpages/source/intetnet/ 
mv *.ronn ~/manpages/ronn/
mv *.?.html ~/manpages/html/
mv *.1 ~/manpages/man/zh_CN/man1/
mv *.5 ~/manpages/man/zh_CN/man5/
echo "move done"

ronn ~/manpages/html/list.ronn
echo "update list done" 

cd ~/manpages/ronn/
mv *.ronn ~/manpages/ronn/
mv *.?.html ~/manpages/html/
mv *.1 ~/manpages/man/zh_CN/man1/
mv *.5 ~/manpages/man/zh_CN/man5/
echo "move done"

ronn ~/manpages/html/list.ronn
echo "update list done" 
