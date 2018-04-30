FROM jenkinsxio/builder-base:0.0.244

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x | bash - && \
  yum install -y nodejs gcc-c++ make bzip2
