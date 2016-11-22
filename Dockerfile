# To build and run with Docker:
#
#  $ docker build -t ng-quickstart .
#  $ docker run -it --rm -p 3000:3000 -p 3001:3001 ng-quickstart
#
FROM node:latest

RUN mkdir -p /NTS /home/nodejs && \
    groupadd -r nodejs && \
    useradd -r -g nodejs -d /home/nodejs -s /sbin/nologin nodejs && \
    chown -R nodejs:nodejs /home/nodejs

WORKDIR /NTS
COPY package.json /NTS/
RUN npm install --unsafe-perm=true

COPY . /NTS
RUN chown -R nodejs:nodejs /NTS
USER nodejs

CMD npm start
