FROM dreamlabs/php-composer:latest

RUN wget http://get.sensiolabs.de/deptrac.phar -O /root/deptrac && \
    chmod +x /root/deptrac && \
    ln -s /root/deptrac /usr/bin/deptrac;

ENTRYPOINT ["deptrac"]