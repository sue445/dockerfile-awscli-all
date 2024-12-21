# sue445/awscli-all
Dockerfile with all awscli (v1) installed

[![build](https://github.com/sue445/dockerfile-awscli-all/actions/workflows/build.yml/badge.svg)](https://github.com/sue445/dockerfile-awscli-all/actions/workflows/build.yml)
[![update_version](https://github.com/sue445/dockerfile-awscli-all/actions/workflows/update_version.yml/badge.svg)](https://github.com/sue445/dockerfile-awscli-all/actions/workflows/update_version.yml)
[![CircleCI](https://circleci.com/gh/sue445/dockerfile-awscli-all/tree/master.svg?style=svg)](https://circleci.com/gh/sue445/dockerfile-awscli-all/tree/master)

* https://hub.docker.com/r/sue445/awscli-all/
* https://github.com/sue445/dockerfile-awscli-all

## Installed packages
* `awscli`
* `aws-sam-cli`
* `ecs-cli`

## Build
```bash
docker build --rm -t awscli-all .
```

## Running
```bash
docker run -it --rm sue445/awscli-all bash
```

## Use aws-cli v2
Use `amazon/aws-cli` instead of `sue445/awscli-all`

* https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-docker.html
* https://hub.docker.com/r/amazon/aws-cli

