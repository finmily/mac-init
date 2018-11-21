##sublime环境

非常快速和强大的文本编辑器，开发人员 ***必须*** 安装，插件部分选装

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Install SublimeText](#install-sublimetext)
- [Install Package Control](#install-package-control)
- [Sublime Plugins](#sublime-plugins)
- [Snippet](#snippet)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Install SublimeText

```
brew install Caskroom/cask/sublime-text
```

### Install Package Control


按 Ctrl+\` 调出console，粘贴以下代码到底部命令行并回车：
sublime text2

```
import urllib2,os;pf='Package Control.sublime-package';ipp=sublime.installed_packages_path();os.makedirs(ipp) if not os.path.exists(ipp) else None;open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read())
```
sublime text3	
```
import urllib.request,os;pf = 'Package Control.sublime-package';ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) );open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
```

[参考链接](https://www.granneman.com/webdev/editors/sublime-text/packages/how-to-install-and-use-package-control/)
	
	
重启Sublime Text 2，如果在Perferences->package settings中看到package control这一项，则启用成功

### Sublime Plugins

按下```Ctrl+Shift+P```调出命令面板，输入```pci``` 调出 Install Package 选项并回车，然后在列表中选中要安装的插件

+ GBK Encoding Support GBK编码支持
+ alignment 代码对齐插件
+ emmet 快速编写html、css的工具，牛逼到不行
+ jquery jquery插件
+ bracketHight... 代码高亮
+ jsformat js代码格式化
+ auto file name 在编写代码时会自动提示文件名
+ docblocker 编写注释很有用
+ htmlbeautify html格式化工具
+ csstidy css格式化工具
+ markdown preview markdown文件预览
+ Sublime CodeIntel 代码自动完成插件


### Snippet

sublime支持代码片段插入，就是可以用快捷键插入一段很长的代码，提升编码速度


