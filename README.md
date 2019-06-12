# sue445/awscli-all
Dockerfile with all awscli installed

[![Docker Status](https://dockerbuildbadges.quelltext.eu/status.svg?organization=sue445&repository=awscli-all)](https://hub.docker.com/r/sue445/awscli-all/)
[![CircleCI](https://circleci.com/gh/sue445/dockerfile-awscli-all/tree/master.svg?style=svg)](https://circleci.com/gh/sue445/dockerfile-awscli-all/tree/master)

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
