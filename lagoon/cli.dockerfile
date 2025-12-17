FROM uselagoon/php-8.3-cli-drupal:latest
ARG COMPOSER_INSTALL_ARGS=""

COPY composer.* /app/
COPY assets /app/assets
RUN composer install $COMPOSER_INSTALL_ARGS
COPY . /app
RUN mkdir -p -v -m775 /app/web/sites/default/files

# Define where the Drupal Root is located
ENV WEBROOT=web
