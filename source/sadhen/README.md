## sadhen的翻译目录

这里存放我的翻译源文件和一些解决方案。

### 说明
这里的翻译以Debian Sid中的man pages为基础。逐步移植cmpp遗留下来的文档。

对于文档中不明白的地方。先不翻译，应当看源代码之后再翻译。

### 翻译流程
每次翻译`sadhen/todo`中的一篇。翻译好之后，移动到`sadhen/migrated`目录。

将翻译好的ronn原文件按照所属的软件包放在`sadhen/ronn`目录下。

每次翻译好之后，从cmpp中认领一篇，并且移动到`sadhen/todo`。

### 翻译规范
1. man的各节标题（指NAME,DESCRIPTION），以后用程序统一替换
2. 尽可能用全角，因为全角全局替换成半角大多没有损失信息
