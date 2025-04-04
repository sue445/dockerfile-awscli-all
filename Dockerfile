FROM alpine AS ecs-cli-downloader

RUN wget https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest -O /usr/local/bin/ecs-cli \
 && chmod 755 /usr/local/bin/ecs-cli

FROM python:3.8-alpine

ENV AWSCLI_VERSION 1.38.28

RUN apk --update --no-cache add bash git \
 && apk --update --no-cache add --virtual .build-deps gcc musl-dev libffi-dev \
 && pip install --no-cache-dir awscli==$AWSCLI_VERSION aws-sam-cli pyyaml!=6.0.0,!=5.4.0,!=5.4.1 \
 && apk del .build-deps --purge

COPY --from=ecs-cli-downloader /usr/local/bin/ecs-cli /usr/local/bin/ecs-cli
