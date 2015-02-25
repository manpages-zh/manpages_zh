#Man介绍

man用于显示系统手册。由于多数软件都提供了man文档，所以man几乎可以查看所
有软件的使用手册。Linux用户一定要习惯man来查找信息。

##查看某一命令的使用手册

这是man最简单的用法，如要查ls命令的使用手册：

	man ls

而要查man命令自己的用法，只需输入：

	man man

##搜索命令

使用-k参数，man可以在所有的man文档和简介中查找符合条件的命令。如：

	$ man -k bash
	bash (1)             - GNU Bourne-Again SHell
	bash-builtins (7)    - bash built-in commands, see bash(1)
	bashbug (1)          - report a bug in bash
	builtins (7)         - bash built-in commands, see bash(1)
	dh_bash-completion (1) - install bash completions for package
	ispellconfig (8)     - Bash script to select a new ispell default dictionary.
	rbash (1)            - restricted bash, see bash(1)
	update-ispell-dictionary (8) - Bash script to select a new ispell default ...

可以看到man -k返回了与bash相关的多条手册简介。

##同名手册的区分

有的关键词在系统中可对应多个手册。以time为例，time在系统中有如下不同意义

* 程序time可以运行程序，并返回该程序执行的时间及相关统计信息。
* C语言函数，用于获取时间
* Linux系统中“时间”的概念

要查阅time的文档，应该如何做呢？

man提供了-f参数，用于查找同名的手册，如：

	$ man -f time
	time (7)             - overview of time and timers
	time (1)             - run programs and summarize system resource usage
	time (2)             - get time in seconds

可以看到以time为名的三篇文档，使用括号里的序号，就可以查看相应的man文档。如：

	man 2 time

实际上这一数字是有规律的，它表示该文档所属的分类（节），序号与分类的对应关系为：

	man文档的分类编号
	1	可执行程序或Shell命令
	2	系统调用（内核提供的函数）
	3	由库提供的库函数调用
	4	特殊文件（多现于/dev）
	5	文件格式，如配置文件格式
	6	游戏
	7	杂项，如man 7 man
	8	系统管理工具
	9	Kernel routines

##troff 格式是什么样的？

troff格式是手册页的基本格式，它是由一些标记对文本进行标记，然后通过专门
的软件进行分析实现的。其符号和标记的详细信息可以参阅 man7目录中的roff.7,
mdoc.samples.7, man.7.

##为什么我的手册页一行中有时空白很大；有时没有空白，反而出现断行错误和乱
码？

troff格式是通过groff/troff程序过滤产生输出的。而某些版本的groff是按英文
习惯断行。它使用英文空白符(ASCII值0x20)和英文断词法决定断行的位置，
然后把每行英文重新排版，使之两边对齐。可是中文词与词之间是没有空格的，断
行要求与英文也大不相同。因为通常在中英文交替时加个空格，groff/troff只能
依靠这些有限的空格断行了。一句中间无空格的中文句会被看作一个英文词（而且
是无法用断词法断词的）。如果中文句很短，groff/troff会认为一行只有很少几
个词，拉伸使之两边对齐，就出现了较大的空白；如果中文句很长，groff/troff
会报告"warning:can'tbreakline"，无法断行，而一直排下去，到行尾时若
处于一个汉字中间（一个汉字被视为两个英文字符），强行断开，下一行就会出
现乱码。

可以尝试设置GROFF_ENCODING环境变量为utf8,设置COLUMS环境变量为80。

###国际化支持

如果有多个语言的编写的手册，man默认以你的locale来确定输出语言，具体来说
就是以locale中的`LC_MESSAGES`来决定，`man -L`可以让你手工选择某种语言，
比如`man -L zh_CN man`可以查看中文版的`man`，当然前提是有。如果你想默认
显示中文版的手册，你可以按下面方法设置一下locale。


	cat /etc/locale.conf 
	LC_CTYPE="zh_CN.UTF-8"  	##输入法
	LC_MESSAGES=zh_CN.UTF-8 	##man和其他消息显示

运行locale可以查看系统local设定，该文件开机登录后读入，更改后需注销重新
登录。
