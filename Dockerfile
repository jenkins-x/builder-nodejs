FROM jenkinsxio/builder-base:0.0.303

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x | bash - && \
  yum install -y nodejs gcc-c++ make bzip2 GConf2 gtk2 chromedriver chromium xorg-x11-server-Xvfb

RUN npm i -g watch-cli vsce typescript
