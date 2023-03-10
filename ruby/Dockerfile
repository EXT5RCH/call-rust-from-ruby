FROM ruby:3.2.0

WORKDIR /app
COPY Gemfile Gemfile.lock /app/

RUN bundle config path "vender/bundle"
RUN bundle install

COPY lib /app/

CMD ["bundle", "exec", "ruby", "app/call_rust_lib.rb"]
