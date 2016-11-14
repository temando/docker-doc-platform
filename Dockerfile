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
