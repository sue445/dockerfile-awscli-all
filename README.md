# sue445/awscli-all
Dockerfile with all awscli (v1) installed

[![Build Status](https://github.com/sue445/dockerfile-awscli-all/workflows/build/badge.svg?branch=master)](https://github.com/sue445/dockerfile-awscli-all/actions?query=workflow%3Abuild)
[![Build Status](https://github.com/sue445/dockerfile-awscli-all/workflows/update_version/badge.svg?branch=master)](https://github.com/sue445/dockerfile-awscli-all/actions?query=workflow%3Aupdate_version)

https://hub.docker.com/r/sue445/awscli-all/

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

