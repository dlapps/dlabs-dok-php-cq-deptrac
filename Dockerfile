FROM dreamlabs/php-composer:latest

RUN composer global require sensiolabs-de/deptrac:dev-master && \
    ln -s /root/.composer/vendor/bin/deptrac /usr/bin/deptrac;

ENTRYPOINT ["deptrac"]