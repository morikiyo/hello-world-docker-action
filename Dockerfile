FROM ruby:2.7-alpine

RUN gem install bundler

COPY Gemfile .
COPY Gemfile.lock .
COPY entrypoint.rb .

# RUN bundle install

COPY entrypoint.sh /entrypoint.sh

RUN echo $HOME
RUN echo $GITHUB_WORKSPACE

ENTRYPOINT ["/entrypoint.sh"]
