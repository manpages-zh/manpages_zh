#国际化支持

运行locale可以查看系统local设定，开机登录后读入，更改后需注销重新登录
相关命令：localectl，systemd.localed.service，不过系统里面没有这个service

	arch% cat /etc/locale.conf 
	LANG=en_US.UTF-8
	LC_CTYPE="zh_CN.UTF-8"         #####输入法
/home/yar/Documents/man/zh_CN####系统显示有关，比如man，运行中警告等
