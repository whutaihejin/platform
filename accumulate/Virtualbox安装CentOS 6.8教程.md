# virtualbox 安装CentOS 6.8 教程
## 修改/etc/sudoers
	su -
	chmod u+w /etc/sudoers
	vim /etc/sudoer
	
	taihejin ALL=(ALL)	ALL
## Install gcc gcc-c++
	sudo yum install gcc
	sudo yum install gcc-c++
	sudo yum install kernel kernel-devel
## Install zsh
	sudo yum install zsh
## Install git
	sudo yum install git
## Install oh-my-zsh
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
	chsh -s /bin/zsh	
	# reboot the system
	sudo shutdown -r now
## Update system
	sudo yum update -y
	
## YouCompleteMe
	git submodule update --init --recursive
	./install.py --clang-completer --gocode-completer
## openssl
	sudo yum install openssl-devel
