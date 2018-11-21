#!/bin/bash

read -p '输入远程服务器IP或者域名' DOMAIN
read -p '输入远程服务器端口(默认请输入22)' PORT
read -p '输入用户名(默认请输入root)' USER
read -p '请输入密钥的名称(如github),然后一路回车' ENAME

ssh-keygen -t rsa -f $ENAME

echo '' >> ~/.ssh/config
echo 'Host '$ENAME >> ~/.ssh/config
echo '    IdentityFile ~/.ssh/'$ENAME >> ~/.ssh/config
echo '    Hostname '$DOMAIN >> ~/.ssh/config
echo '    Port '$PORT >> ~/.ssh/config
echo '    User '$USER >> ~/.ssh/config
echo '' >> ~/.ssh/config

mv $ENAME ~/.ssh/
echo '已经生成秘钥文件到.ssh下面，config文件已配置好，在当前目录下还有一个公钥需要弄到服务器上。'