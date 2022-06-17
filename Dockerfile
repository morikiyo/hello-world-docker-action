FROM ruby:2.7-alpine

RUN gem install bundler

# COPY Gemfile .
# COPY Gemfile.lock .

# RUN bundle install

# COPY entrypoint.rb .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
