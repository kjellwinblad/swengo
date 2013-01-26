all:
	echo "Building Chicago Boss" ; \
	rm -rf ChicagoBoss-0.8.2 ; \
	tar xvzf ChicagoBoss-0.8.2.tar.gz
	cd ChicagoBoss-0.8.2 ; \
	make
	rm -rf swengo/boss.config
	cp swengo/boss.config.in swengo/boss.config
	sed -i -e "s@SWENGO_PATH@`pwd`@g" swengo/boss.config
	cd swengo ; \
	echo "Building swengo" ; \
	./rebar compile

clean:
	rm -rf ChicagoBoss-0.8.2
	cd swengo ; \
	./rebar clean
