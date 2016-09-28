.PHONY : ALL

ALL: gen mv clean

gen:
	thrift --gen java echo.thrift

mv:
	cp gen-java/echo/EchoService.java ../java/echo

clean:
	rm -rf gen-java
