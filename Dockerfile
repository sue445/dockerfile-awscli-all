FROM python:3.7-alpine

ENV AWSCLI_VERSION 1.18.26

RUN apk --update --no-cache add bash git \
 && apk --update --no-cache add --virtual .build-deps gcc musl-dev \
 && pip install --no-cache-dir awscli==$AWSCLI_VERSION aws-sam-cli \
 && apk del .build-deps --purge

RUN wget https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest -O /usr/local/bin/ecs-cli \
 && chmod 755 /usr/local/bin/ecs-cli \
 && apk --update --no-cache add --virtual .build-deps gnupg curl \
 && curl https://raw.githubusercontent.com/aws/amazon-ecs-cli/master/amazon-ecs-public-key.gpg | gpg --import \
 && curl -o ecs-cli.asc https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest.asc \
 && gpg --verify ecs-cli.asc /usr/local/bin/ecs-cli \
 && rm ecs-cli.asc \
 && apk del .build-deps --purge
