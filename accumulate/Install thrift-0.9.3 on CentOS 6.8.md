# Install thrift-0.9.3 on CentOS 6.8

### update system
	sudo yum -y update
### install wget
	sudo yum -y install wget
### install dependency
	yum -y install automake
	yum -y libtool
	yum -y flex
	yum -y pkgconfig
	yum -y gcc-c++
	yum -y zlib-devel
	yum -y python-devel
	yum -y ruby-devel
	yum -y crypto-utils
	yum -y openssl
	yum -y openssl-devel
### install bison dependency
	wget http://ftp.gnu.org/gnu/bison/bison-3.0.2.tar.gz
	tar zxvf bison-3.0.2.tar.gz && cd bison-3.0.2
	./configure --prefix=/usr
	sudo make
	sudo make install
### install boost dependency
	wget http://219.238.7.66/files/31800000083F2519/jaist.dl.sourceforge.net/project/boost/boost/1.61.0/boost_1_61_0.tar.gz
	tar zxvf boost_1_61_0.tar.gz && cd boost_1_61_0
	./bootstrap.sh
	sudo ./b2 threading=multi address-model=64 variant=release stage install
### install libevent dependency
	wget https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
	tar zxvf libevent-2.0.22-stable.tar.gz && cd libevent-2.0.22-stable
	./configure --prefix=/usr
	sudo make && sudo make install
### install ant denpendency
	sudo yum install ant
---
##	 thrift install
	wget http://mirrors.tuna.tsinghua.edu.cn/apache/thrift/0.9.3/thrift-0.9.3.tar.gz
	tar zxvf thrift-0.9.3.tar.gz && cd thrift-0.9.3
	./configure --prefix=/usr
	sudo make && sudo make install
	
	