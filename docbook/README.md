编写 DocBook XML 文档生成 man 手册页（试行）
===========================================

写作方法
--------

参照已有写作模板编写对应手册页的 XML 文档，将文档命名为 `<命令名>.NX.xml`
的形式，放入对应文件夹内；

文档生成
--------

**请先确认您已经安装了 XSLT 对应的软件包：`libxslt`**

运行 `dist.sh` 以生成所有子文件夹中的手册页，运行 `dist.sh dist` 则会在
生成手册页的基础上将所有生成文件复制进项目的 `man/zh_CN/manX` 文件夹下。

注：如果您也您安装了 `docbook-xsl` 软件包，则也可以使用系统的 XSL 文件；
详情请见 dist.sh 中被注释的变量定义。

注意事项
--------

*  暂时参照 XML 文档写作的一般注意事项；

可能采取的排版修正策略
----------------------

*  使用半角括号、半角逗号、全角句号，中英文间用半角空格隔开；
*  使用数字空格（而非传统空格）微调某些区域的文字；
*  （未证实）使用无间距空格字符尝试隔开中文文字的可换行部分；

参考资料
--------

https://github.com/mrry/ciel/blob/master/debian/manpage.xml.ex

http://www.tldp.org/HOWTO/DocBook-Install/using.html

http://www.docbook.org/tdg5/en/html/refentry.html

http://zh.wikipedia.org/wiki/%E7%A9%BA%E6%A0%BC

----------------------------------------------------------------

自带 XSL Stylesheet 说明
------------------------

为了更好地生成合适的 man 手册页`XHTML`文档，我(hosiet)对 DocBook
项目自带的 XSL 文档做了适当的修改；

所有修改可以在 Git 历史里查询得到；关键词是 `docbook: xsl-stylesheets:`
