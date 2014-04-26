DIRS:
	mkdir temp
	mkdir temp/back

vam-proxy:
	.wgetrc
	.curlrc
	exoport http_proxy
