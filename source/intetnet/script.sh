# 新建POT
cd man/man1
for man in `ls *`; do po4a-gettextize -f man -m $man -M utf8 -p ../../po/man1/$man.pot;done

# 更新POT
cd man/man1
for man in `ls *`; do po4a-updatepo -f man -m $man -M utf8 -p ../../po/man1/$man.pot;done
rm -rf ../../po/man1/*.pot~

# 使用PO生成MAN
cd man/man1
po4a-translate -f man -m ls.1 -M utf8 -p ../../po/man1/ls.1.po -l ../zh_CN.UTF-8/man1/ls.1 -k 10
