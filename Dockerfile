FROM python:alpine

ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TERM="xterm" \
    TZ="/usr/share/zoneinfo/Africa/Johannesburg"

RUN apk -U update && \
    apk upgrade && \
    apk add --no-cache \
      bash \
      ca-certificates \
      git \
      supervisor \
      wget \
      zsh \
    && \
    apk add --no-cache --virtual .build-deps \
      build-base postgresql-dev libffi-dev \
      && \
    pip install pipenv && \
    find /usr/local \
      \( -type d -a -name test -o -name tests \) \
      -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
      -exec rm -rf '{}' + && \
    runDeps="$( \
        scanelf --needed --nobanner --recursive /usr/local \
                | awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' \
                | sort -u \
                | xargs -r apk info --installed \
                | sort -u \
    )" && \
    apk add --virtual .rundeps $runDeps && \
    apk del .build-deps && \
    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/*
