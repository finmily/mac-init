## SSH环境

SSH是目前较可靠，专为远程登录会话和其他网络服务提供安全性的协议。在很多地方都会用到，比如git连接仓库，连接远程服务器等等。

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Concept](#concept)
- [Generate keys](#generate-keys)
- [Gitlab and Github](#gitlab-and-github)
- [Secret Key](#secret-key)
- [Notice](#notice)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Concept
你的电脑(客户端)需要连接远程的服务器(服务器端)，至少得知道以下几个东西: 服务器的IP地址(或者域名),登陆服务器的用户名，登陆服务器的密码。通过ssh命令就可以登陆上服务器了，如：

```
ssh root@123.123.123.123
```
123.123.123.123是ip地址，root是用户名，然后会提示你输入密码，密码正确就登陆成功了。当然还有一种不需要密码的方式，使用公钥/密钥的方式。首先生成一组公钥/私钥，客户端拿着密钥，服务器存着公钥，输入上面的命令连接，这样不需要密码也可以登陆了。

### Generate keys

```
ssh-keygen
```
输入上面的命令，会提示你公钥/私钥文件存到哪里，通常是存在.ssh的目录下面,接着一路回车即可。xxx就是私钥，xxx.pub就是公钥。可以把xxx改成任何名称。公钥是可以公开的，私钥最好保密。

### Gitlab and Github
这些是git的仓库，通常需要配置ssh.登陆他们，找到需要配置ssh的地方，把公钥文件或者是公钥的内容设置进去即可。

### Secret Key
公钥已经在服务器上了，私钥也有了，还差最后一步: 也许我们会连接多个git仓库，公钥/私钥都会不一样，那ssh是如何加载不一样的私钥去匹配服务器的公钥的呢？这个时候需要配置一个文件config，输入下面的命令创建一个config文件(必须在.ssh目录下): 

```
touch ~/.ssh/config
```

该文件就是告诉ssh应该使用哪个私钥，配置实例如下:

```
Host 123.123.123.149
IdentityFile ~/.ssh/123.123.123.149
Hostname 123.123.123.149
User root

Host mygithub
IdentityFile ~/.ssh/123.123.123.123
Hostname 123.123.123.123
User root
```

Host 配置的是别名，可以任意取(不能重复)，连接的时候就使用`ssh别名`来替代`ssh root@123.123.123.123`

+ IdentityFile 配置的是私钥的文件路径
+ Hostname 配置的是IP地址或者域名
+ User 配置的是用户名

### Notice
私钥的文件权限不能过大，只能是600，否则会报错。使用命令来调整权限:
```
chmod 600 ~/.ssh/xxx  //xxx是私钥文件
```

在工具包sh目录中有个set_ssh.sh, 执行一下能快速搞定上面的命令。
