# Pull base image
FROM node:0.12.7

# Install Aglio
RUN npm install -g aglio@latest

VOLUME /project
WORKDIR /project
ENV PATH /project/:$PATH

ADD "build.sh" "/project/build.sh"

CMD "/project/build.sh" 
