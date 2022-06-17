FROM ruby:2.7-alpine

WORKDIR /work

RUN gem install bundler

COPY Gemfile* .

RUN bundle install

COPY entrypoint.rb .

ENTRYPOINT ["bundle", "exec", "ruby", "entrypoint.rb"]
