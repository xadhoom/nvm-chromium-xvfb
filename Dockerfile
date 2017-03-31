FROM debian:jessie

ADD xvfb-chromium /usr/bin/xvfb-chromium

RUN apt-get update && apt-get install -y curl xvfb chromium \
    && ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome \
    && ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser \
    && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash \
    && nvm use --lts