FROM arm32v6/alpine:latest

RUN apk update
RUN apk add git git-gitweb
RUN apk add lighttpd
RUN apk add perl perl-cgi
RUN rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

RUN mkdir /srv/git

VOLUME ["/srv/git"]

WORKDIR /srv/git

EXPOSE 80/tcp

#CMD git instaweb
