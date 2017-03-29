FROM conoria/alpine-pandoc

ARG SOURCE_TYPE="Git"
ARG SOURCE_URL="https://github.com/temando/docker-doc-platform"
ARG SOURCE_COMMIT
LABEL com.temando.name="docker-doc-platform" \
      com.temando.description="Docker image for publishing Temando documentation." \
      com.temando.vendor="Temando Pty Ltd" \
      com.temando.vcs-type=$SOURCE_TYPE \
      com.temando.vcs-url=$SOURCE_URL \
      com.temando.vcs-ref=$SOURCE_COMMIT

# Install Basic Tools
RUN apk update --no-cache && apk --no-cache add \
      nodejs \
      nodejs-npm \
      py2-pip  \
      git \
      openssh \
    && pip --no-cache-dir install \
      awscli \
      mkdocs \
      mkdocs-material \
      pygments \
      pymdown-extensions \
      python-markdown-math \
    && npm install -g \
      markdownlint-cli \
      write-good \
      yarn \
      markdown-spellcheck \
      esdoc@0.4.8 \
    && npm cache clean
