FROM php:8.1-cli-alpine

# create a guest local user
ARG user=localuser
ARG group=localgroup
ARG uid=1000
ARG gid=1000
RUN addgroup -g ${gid} -S ${group} \
    && adduser -u ${uid} -G ${group} -S ${user}

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER=0 \
    COMPOSER_HOME=/home/${user}/.composer \
    PATH=/opt/project:/opt/project/vendor/bin:/home/${user}/.composer/vendor/bin:$PATH

WORKDIR /opt/project

# Switch to user
USER ${uid}
