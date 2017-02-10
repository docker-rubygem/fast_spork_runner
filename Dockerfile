FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install fast_spork_runner --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["spork_runner"]
CMD ["--help"]
