.PHONY : ALL

ALL: clean build tar

build:
	mvn clean package

install:
	mvn clean install

tar:
	tar zxvf target/thrift-*-bin.tar.gz -C .

clean:
	rm -rf thrift-*
