## git环境

git是开发人员必须了解的，自行百度

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Install p4merge](#install-p4merge)
- [Install git tool](#install-git-tool)
- [Config git](#config-git)
- [Suggestion](#suggestion)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


### Install p4merge

这是一个osx上面很好的代码对比、代码合并的工具，先安装上。然后配置让git默认使用该工具去对比、合并代码。配置有脚本，见最后的说明。

```
brew install p4merge
```

### Install git tool

+ git-extras 提供了一些有用和有趣的命令
+ git-flow 提供了命令简化git使用的流程

```
brew install git-flow git-extras
```

### Config git
配置脚本在 [sh目录](../sh) 下的set_git.sh中,脚本的主要工作:

+ 2-9行代码配置p4merge工具
+ 11行代码配置全局的gitignore
+ 13-33行配置基础的gitconfig
+ 37-41行配置ssh的config文件
+ 43-45行生成系统的ssh公钥和私钥
+ 47行将公钥生成到剪切板上，直接使用```command+v```即可粘贴出来

进入sh目录,执行
```
./set_git.sh
```

登陆到 GIT仓库，在Profile Settings中的SSH Keys中添加，直接粘贴进去，完成ssh的配置

现在可以使用ssh来迁入迁出代码，域名和端口的统一别名为g。如：
```
git clone g:yeamoney/test
```

### Suggestion
所有的git代码放到 ```~/git``` 中， 目的是协同工作是，减少沟通。如果没有该文件夹，使用命令新建。
```
mkdir ~/git
```
