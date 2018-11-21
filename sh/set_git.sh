#!/bin/bash

echo '#!/bin/sh' > /usr/local/bin/extMerge
echo '/Applications/p4merge.app/Contents/MacOS/p4merge $*' >> /usr/local/bin/extMerge

echo '#!/bin/sh' > /usr/local/bin/extDiff
echo '[ $# -eq 7 ] && /usr/local/bin/extMerge "$2" "$5"' >> /usr/local/bin/extDiff

chmod +x /usr/local/bin/extMerge /usr/local/bin/extDiff

cp ../file/gitignore_global ~/.gitignore_global

read -p '请输入姓名(最好是邮箱的名称，不带@后缀，如tom)' ENAME
read -p '请输入邮箱(请填写企业邮箱，如tom@xxx.com)' EMAIL
echo '[user]' > ~/.gitconfig
echo '	name = '$ENAME >> ~/.gitconfig
echo '	email = '$EMAIL >> ~/.gitconfig
echo '[push]' >> ~/.gitconfig
echo '	default = matching' >> ~/.gitconfig
echo '[core]' >> ~/.gitconfig
echo '	editor = subl -w' >> ~/.gitconfig
echo '	quotepath = false' >> ~/.gitconfig
echo '	excludesfile = ~/.gitignore_global' >> ~/.gitconfig
echo '[color]' >> ~/.gitconfig
echo '	ui = true' >> ~/.gitconfig
echo '[merge]' >> ~/.gitconfig
echo '	tool = extMerge' >> ~/.gitconfig
echo '[mergetool "extMerge"]' >> ~/.gitconfig
echo '	cmd = extMerge \"$BASE\" \"$LOCAL\" \"$REMOTE\" \"$MERGED\"' >> ~/.gitconfig
echo '[mergetool]' >> ~/.gitconfig
echo '	trustExitCode = false' >> ~/.gitconfig
echo '[diff]' >> ~/.gitconfig
echo '	external = extDiff' >> ~/.gitconfig

mkdir ~/.ssh

echo 'Host g' > ~/.ssh/config
echo '    IdentityFile ~/.ssh/g-'$ENAME >> ~/.ssh/config
echo '    Hostname xxx.xxx.xxx' >> ~/.ssh/config
echo '    Port 2222' >> ~/.ssh/config
echo '    User git' >> ~/.ssh/config

ssh-keygen -t rsa -f g-$ENAME

mv g-$ENAME* ~/.ssh/
echo '已经生成秘钥到剪切板上，登陆网站xxxx，在ssh key里面粘贴进去。'
cat ~/.ssh/g-$ENAME.pub | pbcopy

