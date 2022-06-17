FROM ruby:2.7-alpine

RUN gem install bundler

COPY Gemfile .
COPY Gemfile.lock .
COPY entrypoint.rb .

# RUN bundle install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
