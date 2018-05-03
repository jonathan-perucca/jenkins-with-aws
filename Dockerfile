FROM jenkins:latest

USER root

RUN apt-get update && apt-get -qqy --no-install-recommends install groff

RUN curl -O https://bootstrap.pypa.io/get-pip.py \
&& python get-pip.py \
&& pip install awscli

USER jenkins
