# Package the 'swagger-cli' as a docker image.
#
# To build:
# $ docker build -t swagger-cli -f swagger-cli.Dockerfile .
#
# To run:
# see https://github.com/APIDevTools/swagger-cli
#

FROM node:alpine

RUN npm install -g swagger-cli

WORKDIR /data

ENTRYPOINT ["swagger-cli"]
CMD []
