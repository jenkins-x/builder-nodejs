FROM jenkinsxio/builder-base:0.0.251

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x | bash - && \
  yum install -y nodejs gcc-c++ make bzip2

RUN npm i -g watch-cli
