FROM node:latest
MAINTAINER Eldho <eldho@smscompanion.com>

WORKDIR /project
EXPOSE 4200 49152
ENV HOME /tmp

RUN set -ex;                    \
    npm install -g angular-cli; \
    npm cache clean;

ENTRYPOINT ["ng"]
CMD ["--help"]
