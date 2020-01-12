# 如何编写一个语言国际话的shell

> Author : `nyhoo`	:smile:

## 国际化

啥是国际化呢？就是说你写的程序在各个国家地域都适用的一套程序，其风格习俗等满足本地化习惯。最直接差异也最大的当然就是语言国际话啦。至于啥是国际化，本地化请前往百科平台自行科普。

## 诉求

```
我想实现一个脚本在美国语言环境输出 "hello",在中文环境输出"你好"。
```

## 解析

对于这个诉求，直观的来讲实现的方法很多很多，我们要做的是学习前辈们制定的标准方法。linux 下c/c++也是这么实现国际化的(c++11之后有一套新的体系来实现国际化)。很多的系统软件也是采用这样方式的。一些开源软件如vlc播放器等也是采用此方法的。当然次方法不仅仅适用与linux还适用与其他任何平台的。适用locale系列东西来实现。
linux下shell命令locale可以查看本地化的一些配置。
gettext 命令来实现语言之间的翻译工作。
.mo文件来存放具体的翻译语言信息。（什么是 .mo .po .pot 文件自行科普）

* msgfmt .po文件转换为.mo
* msgunfmt .mo 文件转换为.po
* xgettext 源文件提取po信息
## gettext用法

gettext [OPTION] [[TEXTDOMAIN] MSGID]

如果指定参数TEXTDOMAIN那么直接读取参数对应的翻译文件，负责读取环境变量TEXTDOMAIN
缺省时语言翻译文件路径为/usr/share/locale下面，可以通过TEXTDOMAINDIR指定具体的。

参数很简单不在简述。

## 实现

```shell
#!/bin/bash
# File   :hello.sh
# Author :nyhoo
export TEXTDOMAIN=hello
export TEXTDOMAINDIR=lang
gettext -s "hello"
```

目录结构参考/usr/share/locale下面的即可。
如下：




