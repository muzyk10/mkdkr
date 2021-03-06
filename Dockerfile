# this dockerfile is an example
FROM python:3.6-alpine

RUN pip install jinja2-cli[yaml] \
  && apk --no-cache add bash \
  && rm -rf /var/cache/apk/*

COPY generator /generator

WORKDIR /generator

RUN ln -sf /generator/gitlab-ci /usr/local/bin/