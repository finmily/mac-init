## 基础环境

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Brew](#brew)
- [Iterm2](#iterm2)
- [Oh-my-zsh](#oh-my-zsh)
- [Other](#other)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### [Brew](http://brew.sh/index_zh-cn.html)
brew 又叫Homebrew，是MacOSX上的软件包管理工具，能在Mac中方便的安装软件或者卸载软件，只需要一个命令， 非常方便。brew类似ubuntu系统下的apt-get的功能。在命令行输入一下代码进行安装(安装中可能会需要xcode的插件，点击安装、等待完成)

PS: 大部分软件都可以通过 brew 安装，主要是方便管理

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### [Iterm2](http://www.iterm2.cn)
一个非常好用的终端程序，***禁止*** 使用osx自带的终端了，用iterm2搭配zsh非常方便

```
brew install Caskroom/cask/iterm2
```

### [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
zsh是一个Linux体系下的shell，OSX中已经自带，但是不是默认shell。使用下面的命令让zsh成为默认shell。

```
chsh -s /bin/zsh
```

oh-my-zsh是zsh的插件体系，让你使用命令行跟飞一样的感受。安装方法如下: 
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

安装完成以后，需要配置一下插件，找到~/.zshrc文件中的plugins=这个地方,设置成下面的代码，启用需要的插件。
```
plugins=(git autojump extract osx sublime brew-cask copydir copyfile git-extras git-flow gitignore history npm zsh-autosuggestions)
```
### Other
+ google-chrome : 浏览器,请自行下载
+ wget : 命令行下载文件工具
+ autojump : 命令行使用j快速切换目录
+ tree : 命令行一次性列出文件夹所有文件结构
+ zsh-autosuggestions : 自动补全工具 

```
brew install autojump wget tree 
```

作为开发人员，在osx下开发，必须掌握敲命令的能力。以上的一些基础工具能提高效率，非常建议