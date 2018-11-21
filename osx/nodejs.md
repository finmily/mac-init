## nodejs环境
**现在推荐 [n](#https://github.com/tj/n), 用法类似，坑少一点**
nvm是管理nodejs的工具，可以在一台机器上安装多个不同版本的nodejs


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Install nvm ( Recommend `n`)](#install-nvm--recommend-n)
- [Config nvm](#config-nvm)
- [Install nodejs](#install-nodejs)
- [Commands Of nvm](#commands-of-nvm)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Install nvm
```	
brew install nvm
```

### Config nvm
配置脚本在 [sh目录](../sh) 下的set_nvm.sh中,进入sh目录执行命令

```
./set_nvm.sh
```

### Install nodejs
目前系统统一nodejs版本为0.12.7，并设置为默认版本,请 ***必须*** 安装该版本
```
nvm install 0.12.7
nvm alias default 0.12.7
```

### Commands Of nvm

+ nvm ls //查看目前机器已经安装的nodejs
+ nvm help //查看各个命令的使用方法
