FROM ruby:2.6.7-stretch

WORKDIR /

COPY . .

RUN bundle install

CMD exec bundle exec rackup --host 0.0.0.0 -p 4567
