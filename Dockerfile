FROM jenkinsxio/builder-base:0.0.338

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x | bash - && \
  yum install -y nodejs gcc-c++ make bzip2 GConf2 gtk2 chromedriver chromium xorg-x11-server-Xvfb

RUN npm i -g watch-cli vsce typescript

# upgrade skaffold
RUN curl -Lo skaffold https://github.com/jstrachan/skaffold/releases/download/v0.7.0.p2/skaffold-linux-amd64 && \
chmod +x skaffold && \
  mv skaffold /usr/bin
