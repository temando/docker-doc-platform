ARG BUILD_DATE
ARG VCS_REF
LABEL com.temando.build-date=$BUILD_DATE \
      com.temando.name="docker-doc-platform" \
      com.temando.description="Docker image for publishing Temando documentation." \
      com.temando.vcs-ref=$VCS_REF \
      com.temando.vcs-url="https://github.com/temando/docker-doc-platform" \
      com.temando.vendor="Temando Pty Ltd" \
      com.temando.vcs-type="Git"

FROM conoria/alpine-pandoc

# Install Basic Tools
RUN apk update --no-cache && apk --no-cache add \
      nodejs \
      py-pip  \
    && pip --no-cache-dir install \
      awscli \
      mkdocs \
      mkdocs-material \
      pygments \
      pymdown-extensions \
      python-markdown-math \
# Set registry, authentication token can be set at runtime.
    && npm set registry "http://registry.npmjs.org" \
    && npm install -g markdownlint-cli write-good && npm cache clean
