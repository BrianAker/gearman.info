# vim:ft=automake

install: /etc/httpd/conf.d/gearman.info.conf
/etc/httpd/conf.d/gearman.info.conf:
	@sudo install -m 644 conf/gearman.info.conf $@
	@sudo chown root.root $@
	@service httpd restart

/usr/local/share/doc/gearmand/html/:
	bzr clone lp:gearmand
	cd gearmand && ./bootstrap && make install-html
