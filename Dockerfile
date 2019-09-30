# Pull base image
FROM node:0.12.7

# Install Aglio
RUN npm install -g aglio@latest

VOLUME /project
WORKDIR /project
ENV PATH /project/:$PATH

ADD "tools/entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

CMD [ "/entrypoint.sh" ]
