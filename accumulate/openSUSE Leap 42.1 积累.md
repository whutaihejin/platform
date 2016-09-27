# openSUSE Leap 42.1 积累
### 设置打开终端快捷键
	开始菜单 > Settings > Configure Desktop > Shortcuts > Custom Shortcuts > Examples > Run Konsole
### Install gcc
	sudo zypper install gcc
	sudo zypper install gcc-c++
### Install oh-my-zsh
	cat /etc/shells
	# 如果系统已经安装zsh则不需要再执行下面的命令安装zsh
	sudo zypper install 
	cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
	chsh -s /bin/zsh
	
###  Install vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
### Install vimrc
	wget https://raw.githubusercontent.com/whutaihejin/platform/master/accumulate/vimrc
	mv vimrc ~/.vimrc
	vim
	:VundleInstall
### Install Cmake
	sudo zypper install cmake