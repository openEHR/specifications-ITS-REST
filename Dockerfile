# Pull base image
FROM node:16.3.0-alpine

# Install Aglio
RUN npm install -g aglio@latest

ADD "tools/entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

CMD . /entrypoint.sh
