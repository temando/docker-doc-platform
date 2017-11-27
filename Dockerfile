FROM alpine

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
      bash \
      git \
      nodejs \
      nodejs-npm \
      openssh \
      py2-pip  \
    && pip --no-cache-dir install \
      awscli \
      mkdocs==0.16.3 \
      mkdocs-material==1.12.2 \
      pygments \
      pymdown-extensions \
      python-markdown-math \
# Set registry, authentication token can be set at runtime.
    && npm install -g \
      markdownlint-cli \
      markdown-spellcheck \
      write-good \
      yarn \
    && npm cache clean
