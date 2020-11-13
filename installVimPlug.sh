#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel	
fi

##Add HomeBrew support on  Mac OS
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
mv -f ~/vim ~/vim_old


cd ~/ 
rm -rf ./vim
git clone https://gitee.com/roslyp/vim.git


if [ ! $? -eq 0 ]
then
        echo "installtall falid"
        exit 0 
fi
rm -rf ~/.vim_old/
rm -rf ~/.vimrc_old

mv -f ~/.vim ~/.vim_old
mv -f ~/vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vim/.vimrc ~/

rm -rf /home/xrgeek/.vim/bundle/vundle

git clone https://gitee.com/roslyp/vundle ~/.vim/bundle/vundle

if [ ! $? -eq 0 ]
then
        echo "installtall falid"
        exit 0        
fi

echo "ma6174正在努力为您安装bundle程序" 
echo "安装完毕将自动退出"
echo "请耐心等待"
vim ma6174 -c "BundleInstall" -c "q" -c "q"
rm ma6174
echo "安装完成"
