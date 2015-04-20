# 基于列数的中文manpages手册

我希望借助开放和互助来持久的进行这个计划，在这个计划里没有什么限制，你可
以以你喜欢的方式工作，发布你喜欢的内容。只有在有一个起点的情况下，更多的
人才能够参与进来。

## 中文manpages

中文manpages显然需要长久的维护，不仅现在留下来的上万的文档需要整理，程序
本身也在推陈出新，所以我希望更多的人能够参与进来，来维护一个长久更新，切
实能用的中文manpages。我本身非常乐观，因为我们现在有比之前更好更多的资源
，网络手册和书籍降低了翻译的门槛，计算机辅助翻译CAT技术已经也慢慢在改变
翻译流程，借助众人的力量，使翻译变得更加灵活，轻松和规范。现在大多数人也
不再直接编写Groff文件，而是通过一些软件将诸如 `markdown/docbook/po `之类
常见格式转换成手册文件，但你不用理会这个过程，你只需提交你的作品，或者帮
助改善中文文档，这些都是没有任何门槛的。

在man中显示汉字与英语杂排总是会有拉伸，同一个文件在每个人的显示屏上最终
显示效果也不同，为了解决这个问题，以前的中文manpages项目讨论过解决办法，
一种是采用固定列数的办法，manpages仅为这一种列数优化，在这种列数下显示一
般是正常的，其他列数下则有可能发生单词拉伸。还有一种办法就是每个汉字之间
放一个空格，把汉字当做英文单词来排版，但这种变通的方法违背了汉字的排版体
系，也不符合Groff的书写规范，因而既不能在美观上满足当前，也不能在扩展上
寄望未来。本项目采用基于列数的办法。

## 项目结构

中文有简体和繁体，因此对应的manpages手册也分为简体和繁体，通常简体和繁体文
档应该是同步的，因此都放在了`man/`下，由man根据系统的locale或调用man的参数
来决定如何显示，参考`wiki/man简介`。

不同的用户可能使用不同的系统，通常大多数软件应该是一样的，都会跟着上游升
级。对于差异之处，可以通过建立对应不同系统的分支来解决，本项目主分支会一
直跟踪上游，因此总是最新的。我们会努力跟进以便满足您的需要，进入系统源中
以及针对系统发布打包好的二进制文件也是我们努力的目标，您可以加入进来，使
更多的人受益，但需要知道，本项目是公开非盈利的，我们的进步需要更多人的加
入和付出。

本项目在Github:<https://www.github.com/intetnet/manpages_zh>。

本项目在Git@OSC:<https://git.oschina.net/yanpenn/manpages_zh.git>

在线manpages文件可以在<http://intetnet.github.io/html/list.html>上查看。

## 怎么安装？

manpages为文本文件，是不需要安装的。man使用特定的文件结构，类似于
`/home/youname/man/zh_CN/man1/man.1 `这样子，你把下载的manpages手册放在硬
盘上你心仪的位置，然后保证manpath能找到即可。manpath可以通过设置环境变量
来实现，如果你使用的是bash，并且把本项目clone在用户根目录下manpages文件夹
，那么你可以在 `.bashrc `加入下面语句：

	export MANPATH=/usr/man:/usr/share/man:～/manpages/man/
	
不同的文件夹间使用分号隔开。

更多请参考 `wiki/ `文件夹。

## 加入我们

如果您希望将你的作品发表在此，您可以加入本项目。通常推荐的方式是folk项目，
然后推送更新，或者提醒我添加远程仓库。您也可以加入到本项目里面来，在Github
或者Git@OSC发一个issue或者给我发一封电子邮件就可以了，您现在可以看一下我
们的协调计划。

我需要你的帮助来完善版权信息和改善中文手册。

## 联系我

你可以发送电子邮件到yanpenn@outlook.com。

## TODO

参考 `todo/` 文件夹。

## 版权

请参考COPYRIGHT
