#!/usr/bin/bash

for Path in ~/manpages/source/intetnet/ ~/manpages/ronn/ ~/manpages/plan/; do
cd $Path

mv -u *.ronn ~/manpages/ronn/
mv -u *.?.html ~/manpages/html/
mv -u *.1 ~/manpages/man/zh_CN/man1/
mv -u *.5 ~/manpages/man/zh_CN/man5/
mv -u *.8 ~/manpages/man/zh_CN/man8/
echo "move done"

ronn ~/manpages/html/list.ronn
echo "update list done" 

done
