FROM evpavel/slimerjs-alpine

# Install casperjs
RUN wget -O /tmp/casperjs.zip https://github.com/n1k0/casperjs/archive/master.zip && \
    mkdir -p /opt && \
    unzip /tmp/casperjs.zip -d /opt && \
    mv /opt/casperjs-master /opt/casperjs && \
    ln -s /opt/casperjs/bin/casperjs /usr/local/bin/casperjs && \
    rm -f /tmp/casperjs.zip && \ 
    apk add python libressl-dev --update --no-cache 
