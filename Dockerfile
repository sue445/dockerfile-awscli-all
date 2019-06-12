FROM python:3.7-alpine

ENV AWSCLI_VERSION 1.16.176

RUN apk --update --no-cache add bash git \
 && apk --update --no-cache add --virtual .build-deps gcc musl-dev \
 && pip install --no-cache-dir \
                awscli==$AWSCLI_VERSION \
                aws-sam-cli \
 && apk del .build-deps --purge
