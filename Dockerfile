FROM gitlab/gitlab-runner
MAINTAINER Huaming Rao <huaming.rao@gmail.com>

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g strongloop


RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
