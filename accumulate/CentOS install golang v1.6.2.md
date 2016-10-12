# CentOS install golang v1.6.2
### download golang
	wget https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz
### tar
	sudo tar -C /usr/local -zxvf go1.6.2.linux-amd64.tar.gz
### configure
	vim ~/.zshrc
	# add following content
	export GOROOT=/usr/local/go
	export GOPATH=/home/taihejin/golang
	export PATH=$PATH:$GOROOT/bin
	# source
	source ~/.zshrc
	# check version
	go version
	
