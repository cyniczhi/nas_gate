PWD := $(shell pwd)
all:
	docker pull nginx:1.17
	docker run -p 80:80 -v ${PWD}/nginx/www:/usr/share/nginx/html -v ${PWD}/nginx/conf/:/etc/nginx/ -v ${PWD}/nginx/logs:/var/log/nginx -d nginx
